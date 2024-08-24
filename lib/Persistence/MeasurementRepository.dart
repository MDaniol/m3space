import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path_provider/path_provider.dart';

import 'Models/DataRecord.dart';

// Tutaj stosujemy wzorzec Singleton, gwarantuje on, że klasa będzie miała tylko jedną instancję w całej aplikacji.
// Nie chcemy aby były tworzone nowe instancje tej klasy, ponieważ chcemy korzystać z jednej bazy danych.
class MeasurementRepository {
  static MeasurementRepository? _instance; // ta linijka jest odpowiedzialna za to, że klasa będzie miała tylko jedną instancję
  late Isar _isar;

  MeasurementRepository._() {
    _initIsar();
  }

  static MeasurementRepository get instance {
    return _instance ??= MeasurementRepository._();
  }

  Future<void> _initIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [DataRecordSchema],
      directory: dir.path,
    );
  }

  Isar get isar => _isar;

  Future<void> addDataRecord(DataRecord dataRecord) async {
    await isar.writeTxn(() async {
      await _isar.dataRecords.put(dataRecord); // dodaje rekord do bazy danych
      // zwroc uwage, ze musi być opakowane w metode writeTxn, poniewaz operacje na bazie danych musza byc wykonywane w transakcjach
    });
  }

  Future<List<DataRecord?>> getAllDataRecords() async {
    return _isar.dataRecords.where().findAll(); // zwraca wszystkie rekordy z bazy danych
  }
}

