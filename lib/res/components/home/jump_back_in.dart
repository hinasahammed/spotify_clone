import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class JumpBackIn extends StatefulWidget {
  const JumpBackIn({super.key});

  @override
  State<JumpBackIn> createState() => _JumpBackInState();
}

class _JumpBackInState extends State<JumpBackIn> {
  List imageUrl = [
    "https://i.ytimg.com/vi/5UteZw1lhGY/maxresdefault.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZzQ5PYTjzqkV2FYgrwPbM2wxzRDlPDkJ_Xg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiawgQoWhir-HNwRgfYzcisClhXZY2xYHFMg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_gGzFk7y0XSsSNIePj6Tbr_jaQW7cqAErzQ&s",
    "https://i.scdn.co/image/ab67616d0000b2735f628844c2a8a4a2c4b6699c",
  ];
  List title = [
    "JAILER FULL SONG",
    "BEST WORKOUT SONGS",
    "MUGAM KATTU NEE",
    "SHESHAM KAZHCHAYIL",
    "KAYILAE AGASAM",
  ];
  List subTitle = [
    "Playlist",
    "Playlist . Best workout song",
    "Playlist",
    "Ep. johnson",
    "Single. G.V Prakash",
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.separated(
      separatorBuilder: (context, index) => const Gap(10),
      itemCount: imageUrl.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) => Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              width: 200,
              height: 200,
              imageUrl[index],
              fit: BoxFit.cover,
            ),
            const Gap(10),
            Text(
              title[index],
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            Text(
              subTitle[index],
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(.5),
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
