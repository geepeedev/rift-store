import 'package:flutter/material.dart';
// import 'package:rift_store/utils/constants/image_strings.dart';
import 'package:rift_store/utils/constants/sizes.dart';
// import 'package:rift_store/utils/constants/text_strings.dart';
import 'package:rift_store/utils/helpers/helper_functions.dart';
import 'package:rift_store/utils/shared/widgets/rift_text.dart';

class OnboardingComponent extends StatelessWidget {
  const OnboardingComponent({
    super.key,
    required this.imageTitle,
    required this.imageSubtitle,
    required this.image,
  });

  final String imageTitle;
  final String imageSubtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            height: THelperFunctions.screenHeight(context) * 0.6,
            image: AssetImage(
              image,
            ),
            width: THelperFunctions.screenWidth(context) * 0.8,
          ),
          RiftText(text: imageTitle, input: Rifttext.headlineMedium),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          RiftText(text: imageSubtitle, input: Rifttext.bodyMedium)
        ],
      ),
    );
  }
}
