import 'package:e_shop/constants/theme_data.dart';
import 'package:e_shop/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:e_shop/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return ThemeProvider();
          },
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            theme: Styles.themeData(isDarkTheme: themeProvider.getIsDarkTHeme,context: context),

            home: Scaffold(body: HomeScreen()),
          );
        },
      ),
    ),
  );
}
