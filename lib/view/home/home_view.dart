import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List tileImages = [
    "https://c.saavncdn.com/772/Aasa-Kooda-from-Think-Indie-Tamil-2024-20240613052402-500x500.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjdEtjHGaxcRxsvrwu-EKGru_81-pK8F4U7g&s",
    "https://uploads-ssl.webflow.com/5e36e6f21212670638c0d63c/5e39d85cee05be53d238681a_likedSongs.png",
    "https://i.scdn.co/image/ab67706c0000da841b7fd4bb66b68e89bd200a02",
    "https://i.scdn.co/image/ab67706f0000000253bbb318d31fc7c50f305228",
    "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8439e422fe014c20e4425b0045",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF8zw8UpgZAhD5F76Ua1xWtdT2Z5an65WPzw&s",
    "https://mir-s3-cdn-cf.behance.net/project_modules/1400/05bc2c93015373.5e7050321d5bb.gif",
  ];
  List tileText = [
    "Aasa Kooda",
    "Daylist",
    "Liked Song",
    "Lofi Songs",
    "Latest Malayalam",
    "Love Tamil",
    "Romantic Songs",
    "Friday",
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple[300],
                ),
                child: Text(
                  "H",
                  style: theme.textTheme.headlineLarge!.copyWith(
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
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: tileImages.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2.2,
            ),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.onSurface.withOpacity(.4),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Image.network(
                    tileImages[index],
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tileText[index],
                              style: theme.textTheme.bodyLarge!.copyWith(
                                color: theme.colorScheme.onSurface,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Gap(10),
          Text(
            "Jump back in",
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
