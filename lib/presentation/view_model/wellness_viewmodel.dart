import 'package:mbc_wellness/domain/model/wellness_item_model.dart';
import 'package:mbc_wellness/domain/usecase/get_wellness_list_usecase.dart';
import 'package:mbc_wellness/presentation/state/wellness_state.dart';
import 'package:mbc_gallery/domain/usecase/get_gallery_images_date_range_use_case.dart';
import 'package:mbc_gallery/domain/model/gallery_item_model.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:intl/intl.dart';

part 'wellness_viewmodel.g.dart';

@riverpod
class WellnessViewModel extends _$WellnessViewModel {
  @override
  WellnessState build() {
    return WellnessState.initial();
  }

  void getWellnessStatusList(String languageCode, String systemId) async {
    state = state.copyWith(
      wellnessList: const AsyncLoading(),
    );

    final startDateString =
        DateFormat('yyyy-MM-dd', languageCode).format(state.startDate!);
    final endDateString =
        DateFormat('yyyy-MM-dd', languageCode).format(state.endDate!);

    final wellnessResult = await ref
        .read(getWellnessListUseCaseProvider)
        .call(systemId, startDateString, endDateString);

    final wellnessItems = wellnessResult.when<List<WellnessItemModel>>(
      (data) => data,
      (error) {
        state = state.copyWith(
          wellnessList: AsyncError(error, error.stackTrace),
        );
        return [];
      },
    );

    if (wellnessItems.isEmpty) {
      if (wellnessResult is AsyncData) {
        state = state.copyWith(wellnessList: const AsyncValue.data([]));
      }
      return;
    }

    final galleryResult = await ref
        .read(getGalleryImagesDateRangeUseCaseProvider)
        .call(systemId, 1, startDateString, endDateString);
    final galleryItems = galleryResult.when<List<GalleryItemModel>>(
      (data) => data,
      (error) {
        state = state.copyWith(
          wellnessList: AsyncError(error, error.stackTrace),
        );
        return [];
      },
    );

    if (galleryItems.isEmpty && galleryResult is AsyncError) {
      return;
    }

    final Map<String, List<GalleryItemModel>> galleryMap = {};
    for (final galleryItem in galleryItems) {
      final visitId = galleryItem.visitId;
      galleryMap.putIfAbsent(visitId, () => []);
      galleryMap[visitId]!.add(galleryItem);
    }

    final List<WellnessGalleryItem> wellnessGalleryItemsList =
        wellnessItems.map((wellnessItem) {
      final associatedGalleryItems =
          galleryMap[wellnessItem.procuraVisitId] ?? [];

      return WellnessGalleryItem(
        wellnessItem: wellnessItem,
        galleryItems: associatedGalleryItems,
      );
    }).toList();

    state = state.copyWith(
      wellnessList: AsyncValue.data(wellnessGalleryItemsList),
    );
  }
}
