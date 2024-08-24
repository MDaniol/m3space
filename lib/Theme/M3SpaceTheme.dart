
import 'package:flutter/material.dart';

// Tutaj definiujemy wszystko co związane z wyglądem apki, robimy tzw. Theme
// Theme to zestaw kolorów, czcionek, marginesów, paddingów, itp.

ThemeData m3Theme = ThemeData.from(colorScheme: myColorScheme).copyWith(
  // tutaj możemy nadpisać domyślne wartości z ColorScheme
  // np. primaryColor, secondaryColor, errorColor, itp.
  // lub zmienic inne wartości, np. fontFamily, textTheme, itp.
  // Warto zdefiniować Theme, żeby łatwo zmieniać wygląd apki
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(myColorScheme.primary), // Set the button background color to light blue
      foregroundColor: WidgetStateProperty.all(myColorScheme.onPrimary), // Set the button text color to white
    ),
  ),
);

// Tutaj definiujemy zestaw kolorów, które będziemy używać w naszej apce
// Wszystkie kolory są zdefiniowane w klasie Colors
// Możemy też użyć kolorów zdefiniowanych w Theme
// Wtedy używamy np. Theme.of(context).primaryColor
// Warto zdefiniować zestaw kolorów, żeby łatwo zmieniać wygląd apki
// bez konieczności zmiany kolorów w każdym miejscu, gdzie są używane
ColorScheme myColorScheme = ColorScheme.fromSeed(seedColor: Colors.blue).copyWith(
  // tutaj możemy nadpisać domyślne wartości z ColorScheme
  // np. primary, primaryVariant, secondary, secondaryVariant, itp.
  // Warto zdefiniować ColorScheme, żeby łatwo zmieniać wygląd apki
  surface: Colors.grey[300],
  onPrimary: Colors.white,
);