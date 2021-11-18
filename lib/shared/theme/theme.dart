import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData? get mainTheme => ThemeData(
      scaffoldBackgroundColor: AppColors.bgColor,
      textTheme: _textTheme,
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: AppColors.bgColor,
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 18,
        ),
      ),
    );

TextTheme? get _textTheme => const TextTheme(
      headline1: TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      button: TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
    );
