import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rift_store/feature/authentication/presentation/components/onboarding/dot_indicator.dart';
import 'package:rift_store/feature/authentication/presentation/components/onboarding/next_button.dart';
import 'package:rift_store/feature/authentication/presentation/components/onboarding/onboarding_view.dart';
import 'package:rift_store/feature/authentication/presentation/components/onboarding/skip_button.dart';
import 'package:rift_store/feature/authentication/presentation/cubit/onboarding_cubit.dart';
// import 'package:rift_store/feature/authentication/presentation/cubit/authentication_cubit.dart';
// import 'package:rift_store/utils/constants/colors.dart';
import 'package:rift_store/utils/constants/image_strings.dart';
// import 'package:rift_store/utils/constants/sizes.dart';
// import 'package:rift_store/utils/constants/sizes.dart';
import 'package:rift_store/utils/constants/text_strings.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import 'package:flutter/widgets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      body: Stack(
        children: [
          // illustrations page view
          PageView(
            controller: controller,
            onPageChanged: (value) {
              // debugPrint(value.toString());
              // context.read<AuthenticationCubit>().updatePageIndicator(value);
              context.read<OnboardingCubit>().onboardingIndex(value);
            },
            children: const [
              OnboardingComponent(
                image: TImages.onBoardingImage1,
                imageTitle: TTexts.onBoardingTitle1,
                imageSubtitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingComponent(
                image: TImages.onBoardingImage2,
                imageTitle: TTexts.onBoardingTitle2,
                imageSubtitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingComponent(
                image: TImages.onBoardingImage3,
                imageTitle: TTexts.onBoardingTitle3,
                imageSubtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // skip button
          Skipbutton(
            controller: controller,
          ),
          // smooth page indicator
          DotIndicator(
            controller: controller,
          ),
          // circular button (next button)
          Nextbutton(
            controller: controller,
          )
        ],
      ),
    );
  }
}
