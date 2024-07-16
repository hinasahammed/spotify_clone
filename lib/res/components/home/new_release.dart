import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewRelease extends StatefulWidget {
  const NewRelease({super.key});

  @override
  State<NewRelease> createState() => _NewReleaseState();
}

class _NewReleaseState extends State<NewRelease> {
  List imageUrl = [
    "https://i.scdn.co/image/ab67616d0000b273f777db9f9ac6ad355e9e23aa",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ02ECCv2llU_VwIlRyupTZJY6CGm6iWOL9-A&s",
    "https://i.scdn.co/image/ab67616d0000b273e2cdc4d54d755e971ee3cc5d",
    "https://i.scdn.co/image/ab67616d0000b273f48645128db2ca12a29595ce",
    "https://i.scdn.co/image/ab67616d0000b273ce1f4349305971b5beb75fcd",
  ];
  List title = [
    "Tere Bina",
    "Raataan Lambiyan",
    "Dil Lauta Do",
    "Jannat Ve",
    "Kaise Hua",
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
