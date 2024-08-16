// import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:equatable/equatable.dart';

// part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);

  void onboardingIndex(int index) {
    emit(index);
  }

  void nextPageClicked() {
    emit(state + 1);
  }

  @override
  void onChange(Change<int> change) {
    debugPrint(change.toString());
    super.onChange(change);
  }
}
