import 'package:isar/isar.dart';

part 'DataRecord.g.dart';

@collection
class DataRecord {
  Id id = Isar.autoIncrement;
  String? userName; // name of the user
  double? desiredTimeCount; // time randomized by the algorithm, to be guessed by user
  double? guessedTimeCount; // time guessed by user
  DateTime? recordDate; // date of the record, when user made a measurement
  bool? isSynced; // false if not synced with firebase or backend, true if synced

  DataRecord({
    this.userName,
    this.desiredTimeCount,
    this.guessedTimeCount,
    this.recordDate,
    this.isSynced,
  });
}