import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/res/components/common/custom_button.dart';
import 'package:spotify_clone/res/components/common/custom_textformfield.dart';

class CreateAccountWithEmail extends StatelessWidget {
  const CreateAccountWithEmail({super.key});

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
              "What's your email?",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            const CustomTextformfield(),
            const Gap(10),
            Text(
              "You will need to confirm this email later",
              style: theme.textTheme.labelLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Gap(20),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onPressed: () {},
                backgroundColor: theme.colorScheme.onSurface,
                textColor: theme.colorScheme.surface,
                btnText: "Next",
              ),
            )
          ],
        ),
      ),
    );
  }
}
