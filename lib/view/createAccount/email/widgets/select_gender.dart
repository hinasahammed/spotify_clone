import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/view/createAccount/email/widgets/set_your_name.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  List gender = [
    'Female',
    "Male",
    "Non-binary",
    "Other",
    "Prefer not to say",
  ];
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
              "What's your gender?",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(20),
            GridView.builder(
              shrinkWrap: true,
              itemCount: gender.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const SetYourName()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: theme.colorScheme.onSurface.withOpacity(.4),
                    ),
                  ),
                  child: Text(
                    gender[index],
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
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
