import 'package:equatable/equatable.dart';

import 'edition.dart';

class SurahDataContent extends Equatable {
  final int? number;
  final String? name;
  final String? englishName;
  final String? englishNameTranslation;
  final String? revelationType;
  final int? numberOfAyahs;
  final List<SurahDataContent>? ayahs;
  final Edition? edition;

  const SurahDataContent({
    this.number,
    this.name,
    this.englishName,
    this.englishNameTranslation,
    this.revelationType,
    this.numberOfAyahs,
    this.ayahs,
    this.edition,
  });

  factory SurahDataContent.fromJson(Map<String, dynamic> json) =>
      SurahDataContent(
        number: json['number'] as int?,
        name: json['name'] as String?,
        englishName: json['englishName'] as String?,
        englishNameTranslation: json['englishNameTranslation'] as String?,
        revelationType: json['revelationType'] as String?,
        numberOfAyahs: json['numberOfAyahs'] as int?,
        ayahs: (json['ayahs'] as List<dynamic>?)
            ?.map((e) => SurahDataContent.fromJson(e as Map<String, dynamic>))
            .toList(),
        edition: json['edition'] == null
            ? null
            : Edition.fromJson(json['edition'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'name': name,
        'englishName': englishName,
        'englishNameTranslation': englishNameTranslation,
        'revelationType': revelationType,
        'numberOfAyahs': numberOfAyahs,
        'ayahs': ayahs?.map((e) => e.toJson()).toList(),
        'edition': edition?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      number,
      name,
      englishName,
      englishNameTranslation,
      revelationType,
      numberOfAyahs,
      ayahs,
      edition,
    ];
  }
}
