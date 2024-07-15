import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_clone/res/components/common/custom_button.dart';

class CreateAccountWithNumber extends StatelessWidget {
  const CreateAccountWithNumber({super.key});

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
              "Enter phone number",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: theme.colorScheme.onSurface.withOpacity(.5),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "India",
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  Divider(
                    color: theme.colorScheme.onSurface,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Text(
                          "+91",
                          style: theme.textTheme.titleLarge!.copyWith(
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                        VerticalDivider(
                          color: theme.colorScheme.onSurface,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Phone number",
                              hintStyle: theme.textTheme.titleLarge!.copyWith(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Text(
              "We will send you a code to confirm your phone number.",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Gap(20),
            Text(
              "We may ocassionally send you service-based messages.",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Gap(50),
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
