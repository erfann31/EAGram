import 'package:EAGram/service/socket_service.dart';
import 'package:EAGram/views/chat/chat_page.dart';
import 'package:flutter/material.dart';


class SetupPage extends StatelessWidget {
  const SetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var name = '';

    proceed() {
      if (name.length < 3) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Please Input at least 3 characters!')));
      } else {
        SocketService.setUserName(name);
        SocketService.connectAndListen();
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const ChatPage(),
        ));
      }
    }

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("EAGram"),
          backgroundColor: Colors.deepPurple),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: size.width * 0.6,
              child: TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (s) {
                  name = s;
                },
                onSubmitted: (s) => proceed(),
                decoration: const InputDecoration(
                    hintText: 'Enter Your UserID',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () => proceed(),
                child: const Text('LOGIN')),
            SizedBox(height: size.height * 0.3),
            const Text(
              'Made By Adel Karimi and Erfan  Nasri',
              style: TextStyle(fontSize: 11, color: Colors.deepPurple),
            )
          ],
        ),
      ),
    );
  }
}
