import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/res/components/common/custom_button.dart';
import 'package:spotify_clone/res/components/common/custom_textformfield.dart';

class LoginWithoutPassword extends StatelessWidget {
  const LoginWithoutPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Log in without password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email or username",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            const CustomTextformfield(),
            const Gap(10),
            Text(
              "We will send you an email with a link that will log you in.",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(20),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onPressed: () {},
                backgroundColor: theme.colorScheme.onSurface,
                textColor: theme.colorScheme.surface,
                btnText: "Get link",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
