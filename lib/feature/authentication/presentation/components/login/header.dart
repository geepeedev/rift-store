import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:rift_store/utils/constants/image_strings.dart';
import 'package:rift_store/utils/constants/text_strings.dart';
import 'package:rift_store/utils/shared/widgets/rift_text.dart';
// import 'package:rift_store/utils/shared/widgets/rift_text.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(TImages.riftAppIcon),
          height: 100,
        ),
        RiftText(text: TTexts.loginTitle, input: Rifttext.headlineMedium),
        RiftText(
          text: TTexts.loginSubTitle,
          input: Rifttext.bodyMedium,
          align: TextAlign.start,
        )
      ],
    );
  }
}
