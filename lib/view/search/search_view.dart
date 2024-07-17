import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/view/search/widgets/genres.dart';
import 'package:spotify_clone/view/search/widgets/search_card.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
              Text(
                "Search",
                style: theme.textTheme.titleLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Icon(Icons.camera_alt_outlined)
            ],
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
              hintText: "What you want to listen to?",
              hintStyle: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.surface,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Gap(10),
          Text(
            "Explore your genres",
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(10),
          const SizedBox(height: 220, child: Genres()),
          const Gap(20),
          const SearchCard(),
          const Gap(80),
        ],
      ),
    );
  }
}
