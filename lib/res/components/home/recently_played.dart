import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RecentlyPlayed extends StatefulWidget {
  const RecentlyPlayed({super.key});

  @override
  State<RecentlyPlayed> createState() => _RecentlyPlayedState();
}

class _RecentlyPlayedState extends State<RecentlyPlayed> {
  List imageUrl = [
    "https://c.saavncdn.com/772/Aasa-Kooda-from-Think-Indie-Tamil-2024-20240613052402-500x500.jpg",
    "https://uploads-ssl.webflow.com/5e36e6f21212670638c0d63c/5e39d85cee05be53d238681a_likedSongs.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjdEtjHGaxcRxsvrwu-EKGru_81-pK8F4U7g&s",
    "https://i.scdn.co/image/ab67706c0000da841b7fd4bb66b68e89bd200a02",
    "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8439e422fe014c20e4425b0045",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF8zw8UpgZAhD5F76Ua1xWtdT2Z5an65WPzw&s",
  ];
  List title = [
    "Asa Kooda",
    "Liked song",
    "Daylist",
    "Lofi songs",
    "Top tamil",
    "Top romantic"
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.separated(
      separatorBuilder: (context, index) => const Gap(5),
      scrollDirection: Axis.horizontal,
      itemCount: imageUrl.length,
      itemBuilder: (context, index) => Container(
        width: 100,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl[index],
              fit: BoxFit.cover,
            ),
            const Gap(10),
            Expanded(
              child: Text(
                title[index],
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
