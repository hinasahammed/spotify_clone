import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class YourLibrary extends StatelessWidget {
  const YourLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
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
                "Your library",
                style: theme.textTheme.titleLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.search,
                size: 40,
              ),
              const Icon(
                Icons.add,
                size: 40,
              ),
            ],
          ),
          const Gap(10),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: theme.colorScheme.onSurface.withOpacity(.4),
                ),
                child: Text(
                  "Playlists",
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
                  color: theme.colorScheme.onSurface.withOpacity(.4),
                ),
                child: Text(
                  "Artists",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              const Icon(Icons.mobiledata_off),
              const Gap(10),
              Text(
                "Recents",
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
              const Spacer(),
              const Icon(Icons.dashboard)
            ],
          )
        ],
      ),
    );
  }
}
