import 'package:equatable/equatable.dart';

class Ayah extends Equatable {
  final int? number;
  final String? audio;
  final List<dynamic>? audioSecondary;
  final String? text;
  final int? numberInSurah;
  final int? juz;
  final int? manzil;
  final int? page;
  final int? ruku;
  final int? hizbQuarter;

  const Ayah({
    this.number,
    this.audio,
    this.audioSecondary,
    this.text,
    this.numberInSurah,
    this.juz,
    this.manzil,
    this.page,
    this.ruku,
    this.hizbQuarter,
  });

  factory Ayah.fromJson(Map<String, dynamic> json) => Ayah(
        number: json['number'] as int?,
        audio: json['audio'] as String?,
        audioSecondary: json['audioSecondary'],
        text: json['text'] as String?,
        numberInSurah: json['numberInSurah'] as int?,
        juz: json['juz'] as int?,
        manzil: json['manzil'] as int?,
        page: json['page'] as int?,
        ruku: json['ruku'] as int?,
        hizbQuarter: json['hizbQuarter'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'audio': audio,
        'audioSecondary': audioSecondary,
        'text': text,
        'numberInSurah': numberInSurah,
        'juz': juz,
        'manzil': manzil,
        'page': page,
        'ruku': ruku,
        'hizbQuarter': hizbQuarter,
      };

  @override
  List<Object?> get props {
    return [
      number,
      audio,
      audioSecondary,
      text,
      numberInSurah,
      juz,
      manzil,
      page,
      ruku,
      hizbQuarter,
    ];
  }
}
