import 'package:flutter/material.dart';

import '../../service/socket_service.dart';

class ChatTextInput extends StatelessWidget {
  const ChatTextInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textController = TextEditingController();
    var focusCode = FocusNode();

    sendMessage() {
      var message = textController.text;
      if (message.isEmpty) return;
      SocketService.sendMessage(message);
      textController.text = '';
      focusCode.requestFocus();
    }

    return Container(
      margin: const EdgeInsets.all(12),
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              focusNode: focusCode,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.send,
              autofocus: true,
              controller: textController,
              onSubmitted: (s) => sendMessage(),
              decoration: const InputDecoration(
                  hintText: 'Type message here...',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()),
            ),
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () {
              sendMessage();
            },
            child: const CircleAvatar( backgroundColor:Colors.deepPurple,
              child: Icon(Icons.send, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
