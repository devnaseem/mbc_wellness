// To parse this JSON data, do
//
//     final wellnessListResponse = wellnessListResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wellness_list_response.freezed.dart';
part 'wellness_list_response.g.dart';

WellnessListResponse deserializeWellnessListResponse(
        Map<String, dynamic> json) =>
    WellnessListResponse.fromJson(json);

Map<String, dynamic> serializeWellnessListResponse(
  WellnessListResponse wellnessListResponse,
) =>
    wellnessListResponse.toJson();

@freezed
class WellnessListResponse with _$WellnessListResponse {
  const factory WellnessListResponse({
    @JsonKey(name: "result") required List<Result> result,
    @JsonKey(name: "statusCode") required int statusCode,
    @JsonKey(name: "success") required bool success,
    @JsonKey(name: "message") required dynamic message,
  }) = _WellnessListResponse;

  factory WellnessListResponse.fromJson(Map<String, dynamic> json) =>
      _$WellnessListResponseFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: "notes") required List<Note> notes,
    @JsonKey(name: "totalElements") required int totalElements,
    @JsonKey(name: "totalPages") required int totalPages,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Note with _$Note {
  const factory Note({
    @JsonKey(name: "createdTime") required String createdTime,
    @JsonKey(name: "noteDescription") required String noteDescription,
    @JsonKey(name: "noteType") required String noteType,
    @JsonKey(name: "careGiver") required CareGiver careGiver,
    @JsonKey(name: "procuraVisitId") required String procuraVisitId,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

@freezed
class CareGiver with _$CareGiver {
  const factory CareGiver({
    @JsonKey(name: "careGiverId") required dynamic careGiverId,
    @JsonKey(name: "branchPhone") required dynamic branchPhone,
    @JsonKey(name: "branchEmail") required dynamic branchEmail,
    @JsonKey(name: "firstName") required String firstName,
    @JsonKey(name: "lastNameInitial") required String lastNameInitial,
    @JsonKey(name: "designation") required dynamic designation,
    @JsonKey(name: "jobTitle") required dynamic jobTitle,
    @JsonKey(name: "photo") required Photo photo,
    @JsonKey(name: "languages") required List<Language> languages,
  }) = _CareGiver;

  factory CareGiver.fromJson(Map<String, dynamic> json) =>
      _$CareGiverFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    @JsonKey(name: "link") required String link,
  }) = _Photo;

  factory Photo.fromJson(Map<String, String> json) => _$PhotoFromJson(json);
}

@freezed
class Language with _$Language {
  const factory Language({
    @JsonKey(name: "displayName") required String displayName,
  }) = _Language;

  factory Language.fromJson(Map<String, String> json) =>
      _$LanguageFromJson(json);
}
