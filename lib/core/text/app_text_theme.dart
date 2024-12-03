import 'package:flutter/material.dart';

// Class này chứa tất cả các định nghĩa về text style
class AppTextTheme {
  // Getter static để có thể truy cập trực tiếp mà không cần tạo instance
  static TextTheme get textTheme => const TextTheme(
        // Style cho text body lớn
        bodyLarge: TextStyle(
          fontSize: 16,
        ),

        // Style cho tiêu đề lớn nhất
        displayLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cabin',
        ),

        // Style cho tiêu đề lớn vừa
        displayMedium: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.25,
          fontFamily: 'Cabin',
        ),

        // Style cho tiêu đề lớn nhỏ
        displaySmall: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.25,
        ),

        // Style cho headline lớn
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.25,
        ),

        // Style cho headline vừa
        headlineMedium: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.25,
        ),

        // Style cho headline nhỏ
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.25,
        ),

        // Style cho title lớn
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.25,
        ),
      );

  // Private constructor để không cho phép tạo instance của class này
  AppTextTheme._();
}

// Extension để sử dụng các style dễ dàng hơn
extension TextThemeExtension on BuildContext {
  // Các getter tiện ích để truy cập nhanh các style
  TextStyle? get bodyLargeStyle => textTheme.bodyLarge;
  TextStyle? get displayLargeStyle => textTheme.displayLarge;
  TextStyle? get displayMediumStyle => textTheme.displayMedium;
  TextStyle? get displaySmallStyle => textTheme.displaySmall;
  TextStyle? get headlineLargeStyle => textTheme.headlineLarge;
  TextStyle? get headlineMediumStyle => textTheme.headlineMedium;
  TextStyle? get headlineSmallStyle => textTheme.headlineSmall;
  // Getter để lấy textTheme từ Theme
  TextTheme get textTheme => Theme.of(this).textTheme;
  TextStyle? get titleLargeStyle => textTheme.titleLarge;
}
