import 'package:flutter/material.dart';
import 'package:mbc_wellness/domain/usecase/get_wellness_list_usecase.dart';
import 'package:mbc_wellness/presentation/state/wellness_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:intl/intl.dart';

part 'wellness_viewmodel.g.dart';

@riverpod
class WellnessViewModel extends _$WellnessViewModel {
  @override
  WellnessState build() {
    return const WellnessState();
  }

  void getWellnessStatusList(String languageCode, String systemId) async {
    state = state.copyWith(
      wellnessList: const AsyncLoading(),
    );

    DateTime dateTime = DateTime.now().toUtc().subtract(Duration(days: 300));
    DateTime dateTimeToday = DateTime.now().toUtc();
    String fromDate = DateFormat('yyyy-MM-dd', languageCode).format(dateTime);
    String toDate = DateFormat('yyyy-MM-dd', languageCode)
        .format(dateTimeToday.add(const Duration(days: 1)));

    final wellnessResult = await ref
        .read(getWellnessListUseCaseProvider)
        .call(systemId, fromDate, toDate);

    wellnessResult.when((products) {
      state = state.copyWith(
        wellnessList: AsyncValue.data(products),
      );
    }, (error) {
      print(error);
      print(error.stackTrace);

      state = state.copyWith(
        wellnessList: AsyncError(error, error.stackTrace),
      );
    });
  }
}
