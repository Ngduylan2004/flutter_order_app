import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Text'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text('Login Text'),
          ],
        ),
      ),
    );
  }
}
