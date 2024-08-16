import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rift_store/feature/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:rift_store/utils/constants/sizes.dart';

class Skipbutton extends StatelessWidget {
  const Skipbutton({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: kToolbarHeight,
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () {
              // context.read<AuthenticationCubit>().skipPage();
              controller.jumpToPage(2);
            
            },
            child: const Text('Skip')));
  }
}
