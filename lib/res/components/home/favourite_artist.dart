import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FavouriteArtist extends StatefulWidget {
  const FavouriteArtist({super.key});

  @override
  State<FavouriteArtist> createState() => _FavouriteArtistState();
}

class _FavouriteArtistState extends State<FavouriteArtist> {
  List imageUrl = [
    "https://filmfare.wwmindia.com/content/2022/apr/arijitsingh11650885572.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROrCj-tIOm-ZeElYA8z-PNol_YszpRmk4INw&s",
    "https://i.scdn.co/image/ab6761610000e5ebdd746a334ae236bb7a95c1d5",
    "https://images.genius.com/f491f38d594c861310cb4faac94b4573.300x300x1.jpg",
    "https://in.bmscdn.com/iedb/artist/images/website/poster/large/sushin-shyam-1072344-1695702230.jpg",
  ];
  List artistName = [
    "Arijith Singh",
    "A.R Rahman",
    "K.J Yesudas",
    "Dabzee",
    "Sushin Shyam",
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.separated(
        separatorBuilder: (context, index) => const Gap(10),
        scrollDirection: Axis.horizontal,
        itemCount: imageUrl.length,
        itemBuilder: (context, index) => Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    imageUrl[index],
                  ),
                ),
                const Gap(5),
                Text(
                  artistName[index],
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ));
  }
}
