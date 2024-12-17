import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbc_wellness/domain/model/wellness_item_model.dart';
import 'package:mbc_gallery/domain/model/gallery_item_model.dart';

part 'wellness_state.freezed.dart';

@freezed
abstract class WellnessState with _$WellnessState {
  const factory WellnessState({
    @Default(AsyncLoading()) AsyncValue<List<WellnessGalleryItem>> wellnessList,
    @Default(false) bool isLoadingMore,
    @Default(true) bool shouldLoadMore,
    @Default(DateFilter.allTime) DateFilter selectedFilter,
    DateTime? startDate,
    DateTime? endDate,
  }) = _WellnessState;

  factory WellnessState.initial() => WellnessState(
        startDate: DateTime.now().subtract(const Duration(days: 365)),
        endDate: DateTime.now().add(const Duration(days: 1)),
      );
}

@freezed
abstract class WellnessGalleryItem with _$WellnessGalleryItem {
  const factory WellnessGalleryItem({
    required WellnessItemModel wellnessItem,
    @Default([]) List<GalleryItemModel> galleryItems,
  }) = _WellnessGalleryItem;
}

enum DateFilter {
  allTime("All Time"),
  customDate("Custom Date");

  final String? value;
  const DateFilter([this.value]);

  static DateFilter fromString(String filterType) {
    return DateFilter.values.firstWhere(
      (e) => e.value == filterType,
      orElse: () => DateFilter.allTime,
    );
  }
}
