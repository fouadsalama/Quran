import 'package:equatable/equatable.dart';

import 'data.dart';

class SurahDetailsModel extends Equatable {
  final int? code;
  final String? status;
  final SurahDataContent? data;

  const SurahDetailsModel({this.code, this.status, this.data});

  factory SurahDetailsModel.fromJson(Map<String, dynamic> json) {
    return SurahDetailsModel(
      code: json['code'] as int?,
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : SurahDataContent.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'code': code,
        'status': status,
        'data': data?.toJson(),
      };

  @override
  List<Object?> get props => [code, status, data];
}
