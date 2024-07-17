import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/assets/images/image_asset.dart';
import 'package:spotify_clone/view/createAccount/email/widgets/select_artist.dart';

class SelectMusicType extends StatefulWidget {
  const SelectMusicType({super.key});

  @override
  State<SelectMusicType> createState() => _SelectMusicTypeState();
}

class _SelectMusicTypeState extends State<SelectMusicType> {
  List images = [
    ImageAsset.arijith,
    ImageAsset.justin,
    ImageAsset.diljith,
    ImageAsset.anirudh,
    ImageAsset.sp,
    ImageAsset.vineeth,
    ImageAsset.vaishali,
    ImageAsset.falguni,
    ImageAsset.kumar,
    ImageAsset.vijay,
  ];

  List lang = [
    "Hindi",
    "International",
    "Punjabi",
    "Tamil",
    "Telugu",
    "Malayalam",
    "Marathi",
    "Gujarati",
    "Bengali",
    "Kannada"
  ];

  List colors = [
    const Color(0xfffb5607),
    const Color(0xffffb703),
    const Color(0xff9b5de5),
    const Color(0xffffc300),
    const Color(0xff00f5d4),
    const Color(0xff94d2bd),
    const Color(0xffca6702),
    const Color(0xff9f86c0),
    const Color(0xff3f8efc),
    const Color(0xfffe6d73),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What music do you like?",
                style: theme.textTheme.headlineMedium!.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Gap(30),
              GridView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 2,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const SelectArtist()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors[index],
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        alignment: Alignment.bottomRight,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(10),
                        Text(
                          lang[index],
                          style: theme.textTheme.titleLarge!.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
