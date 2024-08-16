import 'package:flutter/material.dart';
import 'package:rift_store/feature/authentication/presentation/components/login/divider.dart';
import 'package:rift_store/feature/authentication/presentation/components/login/footer.dart';
import 'package:rift_store/feature/authentication/presentation/components/login/form.dart';
import 'package:rift_store/feature/authentication/presentation/components/login/header.dart';
import 'package:rift_store/utils/constants/sizes.dart';
import 'package:rift_store/utils/constants/text_strings.dart';
// import 'package:rift_store/utils/constants/sizes.dart';
import 'package:rift_store/utils/shared/widgets/spacing.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.spacingWithAppbarHeight,
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
              LoginDivider(
                dividerText: TTexts.orSignUpWith,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              LoginFooter()
            ],
          ),
        ),
      ),
    );
  }
}
