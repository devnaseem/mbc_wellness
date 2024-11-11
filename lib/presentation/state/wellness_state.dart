import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbc_wellness/domain/model/wellness_item_model.dart';

part 'wellness_state.freezed.dart';

@freezed
abstract class WellnessState with _$WellnessState {
  const factory WellnessState({
    @Default(AsyncLoading()) AsyncValue<List<WellnessItemModel>> wellnessList,
  }) = _WellnessState;
}
