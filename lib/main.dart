import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/views/portfolio/portfolio_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mostafa Hamed',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.kPrimaryColor,
          // background: Colors.white,
        ),
        textTheme: TextTheme(
          labelSmall: kMonteseratFont,
          labelMedium: kMonteseratFont,
          labelLarge: kMonteseratFont,
          headlineSmall: kMonteseratFont,
          headlineMedium: kMonteseratFont,
          titleSmall: kMonteseratFont,
          titleMedium: kMonteseratFont,
          titleLarge: kMonteseratFont,
          headlineLarge: kMonteseratFont,
          displaySmall: kMonteseratFont,
          displayMedium: kMonteseratFont.copyWith(color: Colors.black),
          displayLarge: kMonteseratFont,
          bodySmall: kMonteseratFont,
          bodyMedium: kMonteseratFont,
          bodyLarge: kMonteseratFont,
        ),
        useMaterial3: true,
      ),
      home: const PortfolioView(),
    );
  }
}
