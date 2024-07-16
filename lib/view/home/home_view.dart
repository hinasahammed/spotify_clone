import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/res/components/home/favourite_artist.dart';
import 'package:spotify_clone/res/components/home/hom_top_song_listtile.dart';
import 'package:spotify_clone/res/components/home/jump_back_in.dart';
import 'package:spotify_clone/res/components/home/new_release.dart';
import 'package:spotify_clone/res/components/home/recently_played.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple[300],
                ),
                child: Text(
                  "H",
                  style: theme.textTheme.headlineMedium!.copyWith(
                    color: theme.colorScheme.surface,
                  ),
                ),
              ),
              const Gap(10),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: theme.colorScheme.primary,
                ),
                child: Text(
                  "All",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.surface,
                  ),
                ),
              ),
              const Gap(10),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: theme.colorScheme.onSurface.withOpacity(.3),
                ),
                child: Text(
                  "Music",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
              const Gap(10),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: theme.colorScheme.onSurface.withOpacity(.3),
                ),
                child: Text(
                  "Podcasts",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              )
            ],
          ),
          const Gap(20),
          const HomTopSongListtile(),
          const Gap(10),
          Text(
            "Jump back in",
            style: theme.textTheme.headlineMedium!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 310,
            child: JumpBackIn(),
          ),
          Text(
            "New releases",
            style: theme.textTheme.headlineMedium!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 310,
            child: NewRelease(),
          ),
          Text(
            "Recently played",
            style: theme.textTheme.headlineMedium!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 165,
            child: RecentlyPlayed(),
          ),
          Text(
            "Your favourite artists",
            style: theme.textTheme.headlineMedium!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          const SizedBox(
            height: 160,
            child: FavouriteArtist(),
          ),
          Text(
            "Popular albums",
            style: theme.textTheme.headlineMedium!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 310,
            child: NewRelease(),
          ),
          Text(
            "Best of artists",
            style: theme.textTheme.headlineMedium!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 310,
            child: NewRelease(),
          ),
        ],
      ),
    );
  }
}
