import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:rift_store/feature/authentication/presentation/cubit/onboarding_cubit.dart';
// import 'package:rift_store/feature/authentication/presentation/cubit/authentication_cubit.dart';
// import 'package:rift_store/feature/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:rift_store/utils/constants/colors.dart';
import 'package:rift_store/utils/constants/sizes.dart';
import 'package:rift_store/utils/helpers/helper_functions.dart';

class Nextbutton extends StatelessWidget {
  const Nextbutton({
    super.key,
    required this.controller,
  });
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: kBottomNavigationBarHeight,
        right: TSizes.defaultSpace,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                side:
                    BorderSide(color: isDark ? TColors.primary : TColors.dark),
                shape: const CircleBorder(),
                backgroundColor: isDark ? TColors.primary : TColors.dark),
            onPressed: () {
              controller.nextPage(
                  duration: const Duration(microseconds: 23),
                  curve: Curves.bounceIn);
              // context.read<AuthenticationCubit>().nextPage();
              context.read<OnboardingCubit>().nextPageClicked();
            },
            child: Icon(
              IconlyBold.arrow_right,
              color: isDark ? TColors.dark : TColors.light,
            )));
  }
}
