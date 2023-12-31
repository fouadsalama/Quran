import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'last_read_state.dart';

class LastReadCubit extends Cubit<LastReadState> {
  LastReadCubit() : super(LastReadInitial());

  List<DataModel> model = [];

  void lastRead(DataModel dataModel) async {
    emit(LastReadFirst());

    final pref = await SharedPreferences.getInstance();
    await pref.setString("key", jsonEncode(dataModel.toJson()));

    model.add(dataModel);

    emit(LastReadSuccess(dataModel));
  }
}
