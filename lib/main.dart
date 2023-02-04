import 'package:EAGram/views/setup/setup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EAGram());
}

class EAGram extends StatelessWidget {
  const EAGram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "EAGram",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SetupPage());
  }
}
