import 'package:flutter/material.dart';
import 'package:food_order_app/core/button/app_ouline_button.dart';
import 'package:food_order_app/core/button/app_solid_button.dart';
import 'package:food_order_app/core/text/app_text_theme.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        scrolledUnderElevation: 0, // Để appbar không có shadow khi scroll
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome to Recipe  \n Passport App',
                  style: context.headlineLargeStyle),
              const SizedBox(height: 10),
              Text('Please enter your account details below!',
                  style: context.bodyLargeStyle),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  label: const Text('Full Name'),
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  label: const Text('Email'),
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  label: const Text('Password'),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.visibility),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      const Text('Accept terms & Condition '),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Center(
                      child: AppSolidButton(
                          text: 'Continue', width: 335, height: 52)),
                  const SizedBox(height: 16),
                  const Text('Or continue with'),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppOulineButton(
                          icon: Icons.email,
                          text: 'Google',
                          width: 120,
                          height: 48),
                      AppOulineButton(
                        text: 'ok',
                        width: 48,
                        height: 48,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
