import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.white60,
              ),
              decoration: InputDecoration(
                hintText: 'PLease enter the amount in USD',
                hintStyle: TextStyle(
                  color: Colors.white60,
                ),
                prefixIcon: Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.white60,
              ),
            )
          ],
        ),
      ),
    );
  }
}
