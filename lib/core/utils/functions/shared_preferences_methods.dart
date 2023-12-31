import 'dart:convert';

import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'package:shared_preferences/shared_preferences.dart';

late DataModel lastReadSurahModel;

Future<DataModel?> getLastReadSurah() async {
  final pref = await SharedPreferences.getInstance();
  final jsonString = pref.getString('key');
  return jsonString != null ? DataModel.fromJson(jsonDecode(jsonString)) : null;
}

Future<void> loadLastReadSurah() async {
  DataModel? lastReadSurah = await getLastReadSurah();
  if (lastReadSurah != null) {
    lastReadSurahModel = lastReadSurah;
  }
}
