import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlayDetails extends StatelessWidget {
  const PlayDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://i.scdn.co/image/ab67616d0000b273f777db9f9ac6ad355e9e23aa",
          ),
          opacity: .3,
          alignment: Alignment.topCenter,
          fit: BoxFit.contain,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(250),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tere bina",
                      style: theme.textTheme.titleLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Guru",
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onSurface.withOpacity(.6),
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.check_circle,
                  size: 40,
                  color: theme.colorScheme.primary,
                ),
              ],
            ),
            const Gap(15),
            LinearProgressIndicator(
              value: .1,
              color: theme.colorScheme.onSurface,
              backgroundColor: theme.colorScheme.onSurface.withOpacity(.5),
            ),
            const Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "0:03",
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(.5),
                  ),
                ),
                Text(
                  "4:03",
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(.5),
                  ),
                ),
              ],
            ),
            const Gap(10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.shuffle,
                  size: 30,
                ),
                Icon(
                  Icons.skip_previous,
                  size: 40,
                ),
                Icon(
                  Icons.play_circle,
                  size: 70,
                ),
                Icon(
                  Icons.skip_next,
                  size: 40,
                ),
                Icon(
                  Icons.repeat,
                  size: 30,
                ),
              ],
            ),
            const Gap(20),
            const Row(
              children: [
                Icon(
                  Icons.computer,
                ),
                Spacer(),
                Icon(Icons.share),
                Gap(20),
                Icon(Icons.menu)
              ],
            ),
            const Gap(20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 44, 44, 44),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Credits",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Guru",
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          Text(
                            "Main artist",
                            style: theme.textTheme.labelLarge!.copyWith(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.4),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: theme.colorScheme.onSurface),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Follow",
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(10),
                  Text(
                    "Johnson",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    "Composer",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(.4),
                    ),
                  ),
                  const Gap(10),
                  Text(
                    "Bhasi",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    "Lyricist",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(.4),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
