import 'package:flutter/material.dart';
import 'package:rift_store/utils/constants/colors.dart';
// import 'package:rift_store/utils/constants/sizes.dart';
// import 'package:rift_store/utils/constants/text_strings.dart';
import 'package:rift_store/utils/helpers/helper_functions.dart';
import 'package:rift_store/utils/shared/widgets/rift_text.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: isDark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
         RiftText(text: dividerText, input: Rifttext.labelMedium),
        Flexible(
          child: Divider(
            color: isDark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
