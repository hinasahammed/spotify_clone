import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/view/home/home_view.dart';
import 'package:spotify_clone/view/library/your_library.dart';
import 'package:spotify_clone/view/search/search_view.dart';

class CustomTabBarView extends StatefulWidget {
  const CustomTabBarView({super.key});

  @override
  State<CustomTabBarView> createState() => _CustomTabBarViewState();
}

class _CustomTabBarViewState extends State<CustomTabBarView> {
  List pages = [
    const HomeView(),
    const SearchView(),
    const YourLibrary(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(child: pages[currentIndex]),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        height: 75,
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  "https://i.scdn.co/image/ab67616d0000b273f777db9f9ac6ad355e9e23aa",
                  height: 50,
                  fit: BoxFit.cover,
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ye tune kya kiya",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    Text(
                      "Pritam",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onPrimaryContainer
                            .withOpacity(.4),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.play_arrow,
                  size: 40,
                ),
              ],
            ),
            const Gap(5),
            LinearProgressIndicator(
              color: theme.colorScheme.onPrimaryContainer,
              value: .4,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: theme.colorScheme.onSurface,
        unselectedItemColor: theme.colorScheme.onSurface.withOpacity(.5),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: "Your library",
          ),
        ],
      ),
    );
  }
}
