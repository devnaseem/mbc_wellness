import 'package:freezed_annotation/freezed_annotation.dart';

part 'wellness_item_model.freezed.dart';

@freezed
class WellnessItemModel with _$WellnessItemModel {
  const factory WellnessItemModel({
    required String createdTime,
    required String noteDescription,
    required String noteType,
    required CareGiverModel careGiver,
    required String procuraVisitId,
  }) = _WellnessItemModel;
}

@freezed
class CareGiverModel with _$CareGiverModel {
  const factory CareGiverModel({
    required dynamic careGiverId,
    required dynamic branchPhone,
    required dynamic branchEmail,
    required String firstName,
    required String lastNameInitial,
    required dynamic designation,
    required dynamic jobTitle,
    required PhotoModel photo,
    required List<LanguageModel> languages,
  }) = _CareGiverModel;
}

@freezed
class PhotoModel with _$PhotoModel {
  const factory PhotoModel({
    required String link,
  }) = _PhotoModel;
}

@freezed
class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    required String displayName,
  }) = _LanguageModel;
}
