import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/assets/icons/icons_asset.dart';
import 'package:spotify_clone/res/components/common/custom_button.dart';
import 'package:spotify_clone/view/createAccount/email/create_account_with_email.dart';
import 'package:spotify_clone/view/createAccount/phoneNumber/create_account_with_number.dart';
import 'package:spotify_clone/view/login/withEmailUsername/login_with_email_password.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(.2),
              Colors.black.withOpacity(.1),
              Colors.black.withOpacity(.1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(IconsAsset.logo),
              const Gap(50),
              Text(
                "Millions of Songs.\nFree on Spotify.",
                style: theme.textTheme.headlineLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(50),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  backgroundColor: theme.colorScheme.primary,
                  textColor: theme.colorScheme.onPrimary,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => const CreateAccountWithEmail(),
                      ),
                    );
                  },
                  btnText: "Sign up free",
                ),
              ),
              const Gap(10),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => const CreateAccountWithNumber(),
                      ),
                    );
                  },
                  icon: Image.asset(
                    IconsAsset.mobile,
                    color: Colors.white,
                    width: 40,
                    height: 40,
                  ),
                  btnText: "Continue with phone number",
                ),
              ),
              const Gap(10),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {},
                  btnText: "Continue with Google",
                  icon: Image.asset(
                    IconsAsset.google,
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              const Gap(10),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {},
                  btnText: "Continue with Facebook",
                  icon: Image.asset(
                    IconsAsset.facebook,
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              const Gap(10),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => const LoginWithEmailPassword(),
                      ),
                    );
                  },
                  child: Text(
                    "Log in",
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
