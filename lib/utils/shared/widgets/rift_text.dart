import 'package:flutter/material.dart';

enum Rifttext {
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodySmall,
  bodyMedium,
  labelLarge,
  labelMedium
}

class RiftText extends StatelessWidget {
  const RiftText(
      {super.key,
      required this.text,
      required this.input,
      this.align = TextAlign.center});

  final String text;
  final Rifttext input;
  final TextAlign align;

  @override
  Widget build(
    BuildContext context,
  ) {
    return switch (input) {
      Rifttext.headlineLarge => Text(
          text,
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: align,
        ),
      Rifttext.headlineMedium => Text(
          text,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: align,
        ),
      Rifttext.headlineSmall => Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: align,
        ),
      Rifttext.titleLarge => Text(
          text,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: align,
        ),
      Rifttext.titleMedium => Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: align,
        ),
      Rifttext.titleSmall => Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: align,
        ),
      Rifttext.bodyLarge => Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: align,
        ),
      Rifttext.bodyMedium => Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: align,
        ),
      Rifttext.bodySmall => Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: align,
        ),
      Rifttext.labelMedium => Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: align,
        ),
      Rifttext.labelLarge => Text(
          text,
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: align,
        ),
    };
  }
}
