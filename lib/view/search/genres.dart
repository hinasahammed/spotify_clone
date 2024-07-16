import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Genres extends StatefulWidget {
  const Genres({super.key});

  @override
  State<Genres> createState() => _GenresState();
}

class _GenresState extends State<Genres> {
  List genreGif = [
    "https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExNjVlcWtsb2oyaTU2ZG1qenV2cHA4YzJ5MXdlOW95b2puNzhianZxbiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/oSN9DkmyExSe702xpa/giphy.webp",
    "https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExMzVyMjRkbDQxeW1pNmdzNXlyazdrMWNzZ2wzYm1hajViZ2JvaTA1dCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/fZAL59kty3Fs36vAVL/giphy.webp",
    "https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExOXZ0ajc0aWkxaGxjb3d4Y2tjanQ5NDJpdGlqeWo0ZnIzMzdqODE0dyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/WnTVs4aqmdeMwqO1nO/giphy.webp",
  ];

  List genreTitle = [
    "#bollywood",
    "#pleseant",
    "#feel good",
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView.separated(
      itemCount: genreTitle.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => const Gap(10),
      itemBuilder: (context, index) => Container(
        width: 150,
        height: 220,
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(
              genreGif[index],
            ),
            fit: BoxFit.cover,
            opacity: .6,
          ),
        ),
        child: Text(
          genreTitle[index],
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
