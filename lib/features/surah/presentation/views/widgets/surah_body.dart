import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/surah_data/ayah.dart';

class SurahBody extends StatefulWidget {
  const SurahBody({super.key, required this.model});
  final Ayah model;

  @override
  State<SurahBody> createState() => _SurahBodyState();
}

AudioPlayer audioPlayer = AudioPlayer();

class _SurahBodyState extends State<SurahBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () async {
                  final url = widget.model.audio;
                  print('url :$url');
                  await audioPlayer.play(
                    UrlSource(
                      url!,
                    ),
                  );
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: kPrimaryColor,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.model.text.toString(),
                      textAlign: TextAlign.end,
                      style: Styles.textStyle14.copyWith(
                        color: kPrimaryColor,
                        fontSize: kDefaultFontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: kAmiri,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Gap(10),
          Text(
            '',
            softWrap: true,
            style: GoogleFonts.montserrat(
              textStyle: Styles.textStyle14.copyWith(
                color: kPrimaryColor,
                fontSize: kDefaultFontSize,
              ),
            ),
          ),
          const Gap(23),
        ],
      ),
    );
  }

  Future<void> playAudioFromUrl(String url) async {
    await audioPlayer.play(UrlSource(url));
  }
}
