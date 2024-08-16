import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:rift_store/utils/constants/sizes.dart';
import 'package:rift_store/utils/constants/text_strings.dart';
import 'package:rift_store/utils/shared/widgets/rift_text.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            // login field
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(IconlyLight.user),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            // password field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: Icon(IconlyLight.password),
                  suffixIcon: Icon(IconlyBroken.hide)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),
            // remember me and forget pasword
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // remember me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const RiftText(
                        text: TTexts.rememberMe, input: Rifttext.bodyMedium),
                  ],
                ),
                // forget password
                TextButton(
                  onPressed: () {},
                  child: const RiftText(
                      text: TTexts.forgetPassword, input: Rifttext.bodyMedium),
                ),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
