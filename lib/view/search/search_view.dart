import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/view/search/genres.dart';

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
          const Gap(10),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: theme.colorScheme.primaryContainer,
            ),
            child: Image.network(
                "https://cms-fym.s3.nl-ams.scw.cloud/ox_Yn_AX_Da_R2_Cw_Rrnhv_Eal_515f388034.png"),
          )
        ],
      ),
    );
  }
}
