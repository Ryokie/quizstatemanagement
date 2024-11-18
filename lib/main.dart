import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/theme_provider.dart';
import 'providers/font_provider.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => FontProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ambil theme dan font dari provider
    final themeProvider = Provider.of<ThemeProvider>(context);
    final fontProvider = Provider.of<FontProvider>(context);

    // Mengatur theme dan font yang dipilih
    return MaterialApp(
      title: 'Multi-Theme & Font App',
      theme: themeProvider.currentTheme.copyWith(
        textTheme: themeProvider.currentTheme.textTheme.copyWith(
          bodyMedium: TextStyle(fontFamily: fontProvider.currentFont),
          headlineSmall: TextStyle(fontFamily: fontProvider.currentFont),
          titleLarge: TextStyle(fontFamily: fontProvider.currentFont),
        ),
      ),
      home: MainScreen(),
    );
  }
}
