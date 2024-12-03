import 'package:flutter/material.dart';
import 'package:food_order_app/core/text/app_text_theme.dart';
import 'package:food_order_app/presentation/auth/login/login_screen.dart';
import 'package:food_order_app/presentation/auth/login/login_text.dart';
import 'package:food_order_app/presentation/auth/register/register_screen.dart';
import 'package:food_order_app/presentation/splash_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'register',
          builder: (BuildContext context, GoRouterState state) {
            return const RegisterScreen();
          },
        ),
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'loginText',
              builder: (BuildContext context, GoRouterState state) {
                return const LoginText();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _goRouter,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF86BF3E)),
        fontFamily: 'Cabin',
        textTheme: AppTextTheme.textTheme,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
