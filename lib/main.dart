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
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.blue),

        home: Scaffold(body: HomeScreen()),
      ),
    ),
  );
}
