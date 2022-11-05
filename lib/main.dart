import 'package:flutter/material.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_theme.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.ligthTheme,
        home: const HomeView());
  }
}
