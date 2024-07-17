import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/res/components/common/custom_button.dart';
import 'package:spotify_clone/res/components/common/custom_textformfield.dart';
import 'package:spotify_clone/view/createAccount/email/widgets/select_dob.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

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
              "Create a password",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            const CustomTextformfield(
              suffixIcon: Icon(Icons.visibility),
            ),
            const Gap(50),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const SelectDob()));
                },
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
