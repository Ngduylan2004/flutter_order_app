import 'package:flutter/material.dart';
import 'package:food_order_app/core/button/app_solid_button.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Login'),
            AppSolidButton(
              onPressed: () {
                context.go('/login/loginText');
              },
              text: 'Login Text',
              width: 200,
              height: 52,
            ),
          ],
        ),
      ),
    );
  }
}
