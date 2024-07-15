import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/res/components/common/custom_button.dart';
import 'package:spotify_clone/res/components/common/custom_textformfield.dart';
import 'package:spotify_clone/view/login/withoutPassword/login_without_password.dart';

class LoginWithEmailPassword extends StatelessWidget {
  const LoginWithEmailPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
            const Gap(20),
            Text(
              "Password",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            const CustomTextformfield(),
            const Gap(50),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onPressed: () {},
                backgroundColor: theme.colorScheme.onSurface,
                textColor: theme.colorScheme.surface,
                btnText: "Log in",
              ),
            ),
            const Gap(50),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const LoginWithoutPassword(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: theme.colorScheme.onSurface.withOpacity(.3)),
                  ),
                  child: Text(
                    "Log in without password",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
