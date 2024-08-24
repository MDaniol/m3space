import 'package:flutter/material.dart';
import 'package:m3space/Data/data_square_game.dart';
import 'package:m3space/Data/data_storage.dart';
import 'package:m3space/Square/square_game.dart';
import 'package:m3space/Square/square_input.dart';
import 'package:m3space/Square/square_result.dart';
import 'package:m3space/Square/squrare_rules.dart';
import 'package:m3space/Theme/M3SpaceTheme.dart';
import 'package:m3space/main_screen.dart';
import 'package:m3space/start_screen.dart';

import 'package:m3space/Persistence/MeasurementRepository.dart';

class M3space extends StatefulWidget {
  const M3space({Key? key}) : super(key: key);

  @override
  _M3spaceState createState() => _M3spaceState();
}

class _M3spaceState extends State<M3space> {
  late MeasurementRepository repository;

  @override
  void initState() {
    super.initState();
    repository = MeasurementRepository.instance;
    // Tu inicjujemy instancję repozytorium bazy danych, której będziemy używać później.
    // To ekstremalnie ważne, żeby ją przygotować wcześniej, bo jej inizjaclizacja zajmuje trochę czasu.
  }

  void function() {
    return null; // do nothing, ta funkcja jest tylko po to, abym nie musiał zmieniać wszystkich klas - nie chciało mi się :)
  }

  // Cała nawigacja poniżej. Działa na zasadzie przekierowywania na kolejne ekrany.
  // routes - ścieżki do poszczególnych ekranów
  // initialRoute - ekran startowy
  // context - kontekst aplikacji
  // Navigator - klasa do nawigacji pomiędzy ekranami, używana do przekierowywania na kolejne ekrany
  // źródło: https://docs.flutter.dev/ui/navigation
  // polecam Flutter Cookbook https://docs.flutter.dev/cookbook/navigation/navigation-basics
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: m3Theme,
      initialRoute: '/',
      routes: {
        '/': (context) =>  StartScreen(function),
        '/main-screen': (context) => MainScreen(function),
        '/square-rules': (context) => SqurareRules(function),
        '/square-game': (context) => SquareGame(function),
        '/square-input': (context) => SquareInput(function),
        '/square-result': (context) => SquareResult(function),
        '/data-storage': (context) => DataStorage(function),
        '/square-game-data': (context) => const DataSquareGame(),
      },
    );
  }
}