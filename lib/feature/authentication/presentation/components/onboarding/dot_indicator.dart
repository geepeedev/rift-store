import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rift_store/feature/authentication/presentation/cubit/onboarding_cubit.dart';
// import 'package:rift_store/feature/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:rift_store/utils/constants/colors.dart';
import 'package:rift_store/utils/constants/sizes.dart';
import 'package:rift_store/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: kBottomNavigationBarHeight * 1.50,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller,
          onDotClicked: (index) {
            // context.read<AuthenticationCubit>().updatePageIndicator(index);
            // context.read<OnboardingCubit>().onboardingIndex(index);
            controller.jumpToPage(index);
          },
          count: 3,
          effect: ExpandingDotsEffect(
              dotHeight: 6,
              activeDotColor: isDark ? TColors.light : TColors.dark),
        ));
  }
}
