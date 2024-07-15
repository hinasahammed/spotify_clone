import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/res/components/common/custom_button.dart';
import 'package:spotify_clone/res/components/common/custom_textformfield.dart';
import 'package:spotify_clone/view/createAccount/email/select_music_type.dart';

class SetYourName extends StatelessWidget {
  const SetYourName({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("Create account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's your name?",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            const CustomTextformfield(),
            const Gap(10),
            Text(
              "This appears on your Spotify profile.",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Gap(10),
            const Divider(),
            const Gap(10),
            Text(
              "By tapping \"Create account\", you agree to the Spotify Terms of Use",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Gap(10),
            Text(
              "Terms of Use",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            const Gap(10),
            Text(
              "To learn more about Spotify collects, uses, shares and protects your personal data, please see the Spotify Privacy Policy.",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Gap(10),
            Text(
              "Privacy Policy",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            const Gap(20),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "I would prefer not to receive marketing messages from Spotify.",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
                Radio(
                  value: 0,
                  groupValue: 1,
                  onChanged: (value) {},
                )
              ],
            ),
            const Gap(20),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Share my registration data with Spotify's content providers for marketing purposes.",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
                Radio(
                  value: 0,
                  groupValue: 1,
                  onChanged: (value) {},
                )
              ],
            ),
            const Gap(50),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const SelectMusicType()));
                },
                backgroundColor: theme.colorScheme.onSurface,
                textColor: theme.colorScheme.surface,
                btnText: "Create account",
              ),
            )
          ],
        ),
      ),
    );
  }
}
