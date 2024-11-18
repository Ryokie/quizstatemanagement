import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import '../providers/font_provider.dart';
import '../themes/app_themes.dart';
import '../themes/app_fonts.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final fontProvider = Provider.of<FontProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Theme:', 
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black), // Menambahkan warna hitam pada teks
            ),
            RadioListTile(
              title: Text('Theme A'),
              value: themeA,
              groupValue: themeProvider.currentTheme,
              onChanged: (value) {
                themeProvider.setTheme(value!);
              },
            ),
            RadioListTile(
              title: Text('Theme B'),
              value: themeB,
              groupValue: themeProvider.currentTheme,
              onChanged: (value) {
                themeProvider.setTheme(value!);
              },
            ),
            RadioListTile(
              title: Text('Theme C'),
              value: themeC,
              groupValue: themeProvider.currentTheme,
              onChanged: (value) {
                themeProvider.setTheme(value!);
              },
            ),
            Divider(),
            Text(
              'Choose Font:', 
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black), // Menambahkan warna hitam pada teks
            ),
            RadioListTile(
              title: Text('Font A'),
              value: fontA,
              groupValue: fontProvider.currentFont,
              onChanged: (value) {
                fontProvider.setFont(value!);
              },
            ),
            RadioListTile(
              title: Text('Font B'),
              value: fontB,
              groupValue: fontProvider.currentFont,
              onChanged: (value) {
                fontProvider.setFont(value!);
              },
            ),
            RadioListTile(
              title: Text('Font C'),
              value: fontC,
              groupValue: fontProvider.currentFont,
              onChanged: (value) {
                fontProvider.setFont(value!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
