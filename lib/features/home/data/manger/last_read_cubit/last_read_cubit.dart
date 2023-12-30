import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';

part 'last_read_state.dart';

class LastReadCubit extends Cubit<LastReadState> {
  LastReadCubit() : super(LastReadInitial());
  List<DataModel> model = [];

  void lastRead(DataModel dataModel) {
    emit(LastRead());
    model.add(dataModel);
    emit(LastReadSuccess(dataModel));
  }
}
