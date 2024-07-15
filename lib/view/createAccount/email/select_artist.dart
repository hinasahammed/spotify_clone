import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SelectArtist extends StatefulWidget {
  const SelectArtist({super.key});

  @override
  State<SelectArtist> createState() => _SelectArtistState();
}

class _SelectArtistState extends State<SelectArtist> {
  List title = [
    "For you",
    "Malayalam",
    "Tamil",
    "Hindi",
  ];
  List images = [
    "https://i.scdn.co/image/ab6761610000e5ebfc7c542c04b5f7dc8f1b1c16",
    "https://in.bmscdn.com/iedb/artist/images/website/poster/large/sushin-shyam-1072344-1695702230.jpg",
    "https://i.scdn.co/image/ab6761610000e5ebcb6926f44f620555ba444fca",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROrCj-tIOm-ZeElYA8z-PNol_YszpRmk4INw&s",
    "https://i.scdn.co/image/ab6761610000e5ebdd746a334ae236bb7a95c1d5",
    "https://filmfare.wwmindia.com/content/2022/apr/arijitsingh11650885572.jpg",
    "https://i.scdn.co/image/ab6761610000e5eb8d453f36b1119862f6f7246c",
    "https://cdn.gulte.com/wp-content/uploads/2023/12/Harris-Jayaraj.jpg",
    "https://images.genius.com/f491f38d594c861310cb4faac94b4573.300x300x1.jpg",
  ];
  List artistname = [
    "Anirudh Ravichandran",
    "Sushin Shyam",
    "Pritam",
    "A.R Rahman",
    "K.J Yesudas",
    "Arijith Singh",
    "Vishnu vijay",
    "Harris jayaraj",
    "Dabzee"
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Choose 3 or more artists you like.",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(10),
            TextField(
              decoration: InputDecoration(
                fillColor: theme.colorScheme.onSurface,
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: theme.colorScheme.surface,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: "Search",
                hintStyle: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.surface,
                ),
              ),
            ),
            const Gap(20),
            SizedBox(
              height: 40,
              child: ListView.separated(
                separatorBuilder: (context, index) => const Gap(10),
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: theme.colorScheme.onSurface.withOpacity(.5),
                    ),
                    color: index == 0
                        ? theme.colorScheme.primary
                        : theme.colorScheme.surface,
                  ),
                  child: Text(
                    title[index],
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: index == 0
                          ? theme.colorScheme.onPrimary
                          : theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const Gap(20),
            Expanded(
              child: GridView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: .7,
                ),
                itemBuilder: (context, index) => Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        images[index],
                      ),
                    ),
                    const Gap(10),
                    Text(
                      artistname[index],
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
