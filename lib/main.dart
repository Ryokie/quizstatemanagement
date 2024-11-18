import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/main_screen.dart'; // Pastikan file ini ada
import 'providers/theme_provider.dart';
import 'providers/font_provider.dart';
import 'themes/app_themes.dart';
import 'themes/app_fonts.dart';

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
    // Mengambil tema dan font yang dipilih
    final themeProvider = Provider.of<ThemeProvider>(context);
    final fontProvider = Provider.of<FontProvider>(context);

    return MaterialApp(
      title: 'Multi Theme App', // Nama aplikasi Anda
      theme: themeProvider.currentTheme, // Tema yang dipilih
      themeMode: ThemeMode
          .light, // Anda bisa mengatur ke ThemeMode.dark jika menggunakan tema gelap
      home: MainScreen(), // Halaman awal aplikasi
      builder: (context, child) {
        return DefaultTextStyle(
          style: TextStyle(
              fontFamily:
                  fontProvider.currentFont), // Mengubah font secara global
          child: child!,
        );
      },
    );
  }
}
