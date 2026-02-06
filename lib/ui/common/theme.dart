// lib/ui/common/theme.dart

import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF2C2C2C),
      primary: const Color(0xFF2C2C2C), // De inktkleur
      surface: const Color(0xFFF8F8F4), // Het perkament
      secondary: const Color(0xFFC4A053), // Het goud
    ),
    textTheme: const TextTheme(
      // Voor grote koppen (bijv. paginatitels)
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: -0.5),
      headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),

      // Voor de titels op je kaarten
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, height: 1.2),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),

      // Voor de eigenlijke leestekst (Intro van je nieuws)
      bodyLarge: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 14, height: 1.5, color: Colors.black54),

      // Voor kleine info (Auteur, Datum, Tags)
      labelLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1.1),
      labelSmall: TextStyle(fontSize: 10, color: Colors.grey),
    ),
  );
}
