import 'dart:convert';

import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalLastRead {
  static late DataModel lastReadSurahModel;

  static Future<DataModel?> getLastReadSurah() async {
    final pref = await SharedPreferences.getInstance();
    final jsonString = pref.getString('key');
    return jsonString != null
        ? DataModel.fromJson(jsonDecode(jsonString))
        : null;
  }

  static Future<void> loadLastReadSurah() async {
    DataModel? lastReadSurah = await getLastReadSurah();
    if (lastReadSurah != null) {
      lastReadSurahModel = lastReadSurah;
    }
  }
}

// abstract class LocalBookmark {
//   static late DataModel bookmarkDataSaved;

//   static Future<DataModel?> getLastBookmarkSurah() async {
//     final pref = await SharedPreferences.getInstance();
//     final jsonString = pref.getString('model');
//     return jsonString != null
//         ? DataModel.fromJson(jsonDecode(jsonString))
//         : null;
//   }

//   static Future<void> loadLastBookmarkSurah() async {
//     DataModel? lastReadSurah = await getLastBookmarkSurah();
//     if (lastReadSurah != null) {
//       bookmarkDataSaved = lastReadSurah;
//     }
//   }
// }
