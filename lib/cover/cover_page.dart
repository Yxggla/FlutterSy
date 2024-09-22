import 'package:flutter/material.dart';

class CoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'img/jinru.GIF',
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}