import 'package:flutter/material.dart';
import 'package:food_order_app/core/button/app_solid_button.dart';
import 'package:food_order_app/core/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/image/food/splash_img.jpg',
              fit: BoxFit.cover,
              width: double.infinity, // lắp đầy màn hình
              height: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  // màu sắc chạy từ trên xuống dưới
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black.withOpacity(0.9),
                  ],
                  stops: const [0.0, 0.0, 0.5, 1.5], // vị trí màu sắc
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Recipe Passport',
                      style: context.displayMediumStyle
                          ?.copyWith(color: Colors.white)),
                  Text(
                      'Welcome to recipe passport where you \n virtually travel  the world through recipes.',
                      style:
                          context.bodyLargeStyle?.copyWith(color: Colors.white),
                      textAlign: TextAlign.center),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: AppSolidButton(
                      onPressed: () {
                        context.go('/register');
                      },
                      width: 200,
                      height: 52,
                      text: 'Get Started',
                      icon: Icons.arrow_forward,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
