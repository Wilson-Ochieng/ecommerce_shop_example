import 'package:e_shop/constants/app_colors.dart';
import 'package:e_shop/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      // backgroundColor: AppColors.lightScaffoldColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "Duka Letu",

              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 50),

            ElevatedButton(onPressed: () {}, child: Text("Buy Now")),

            SwitchListTile(

              title: Text(themeProvider.getIsDarkTHeme ? "Dark Theme":"Light Theme"),
              value: themeProvider.getIsDarkTHeme,
              onChanged: (value) {
                themeProvider.setDarkTheme(value);
                print('Theme State:${themeProvider.getIsDarkTHeme}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
