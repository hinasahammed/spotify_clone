import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/res/components/common/custom_button.dart';
import 'package:spotify_clone/view/createAccount/email/select_gender.dart';

class SelectDob extends StatelessWidget {
  const SelectDob({super.key});

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
              "What's your date of birth?",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(20),
            SizedBox(
              height: 220,
              child: CupertinoDatePicker(
                itemExtent: 90,
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime(2010),
                minimumYear: 1900,
                maximumYear: DateTime.now().year,
                onDateTimeChanged: (DateTime newDateTime) {},
              ),
            ),
            const Gap(50),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const SelectGender()));
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
