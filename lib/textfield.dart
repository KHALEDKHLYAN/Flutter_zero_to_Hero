import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField FirstApp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your User Name',
                  hintText: 'Enter Your Name',
                  prefixIcon: Icon(Icons.contact_page)
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Password',
                  hintText: 'Enter Password',
                  prefixIcon: Icon(Icons.key_outlined),
                ),
              ),
            ),
            ElevatedButton( // Changed RaisedButton to ElevatedButton
              onPressed: () {},
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
