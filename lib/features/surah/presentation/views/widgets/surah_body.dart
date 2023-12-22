import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'package:islamic_app/core/utils/app_assets.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/surah_data/ayah.dart';

class SurahBody extends StatefulWidget {
  const SurahBody({super.key, required this.model, required this.dataModel});
  final Ayah model;
  final DataModel dataModel;
  @override
  State<SurahBody> createState() => _SurahBodyState();
}

class _SurahBodyState extends State<SurahBody> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isClick = false;
  @override
  void initState() {
    audioPlayer.onPlayerComplete.listen((event) {
      setState(() {
        isClick = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Card(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            final url = widget.model.audio;
                            playAudioFromUrl(url!);

                            setState(() {
                              isClick = !isClick;
                            });
                          },
                          icon: SizedBox(
                            height: 15,
                            child: isClick
                                ? Image.asset(
                                    AppAssets.pauseButton,
                                    color: kPrimaryColor,
                                  )
                                : Image.asset(
                                    AppAssets.playButton,
                                    color: kPrimaryColor,
                                  ),
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
                  ),
                ],
              ),
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }

  Future<void> playAudioFromUrl(String url) async {
    if (isClick) {
      audioPlayer.pause();
    } else {
      await audioPlayer.play(UrlSource(url));
    }
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}
