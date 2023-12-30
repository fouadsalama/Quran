part of 'last_read_cubit.dart';

sealed class LastReadState extends Equatable {
  const LastReadState();

  @override
  List<Object> get props => [];
}

final class LastReadInitial extends LastReadState {}

class LastReadSuccess extends LastReadState {
  final DataModel dataModel;

  const LastReadSuccess(this.dataModel);
}

class LastRead extends LastReadState {}
