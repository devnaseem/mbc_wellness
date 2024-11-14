// To parse this JSON data, do
//
//     final wellnessListResponse = wellnessListResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wellness_list_response.freezed.dart';
part 'wellness_list_response.g.dart';


List<WellnessListResponse> deserializeWellnessListResponseList(List<Map<String, dynamic>> json) =>
    json.map((e) => WellnessListResponse.fromJson(e)).toList();

List<Map<String, dynamic>> serializeWellnessListResponseList(List<WellnessListResponse> objects) =>
    objects.map((e) => e.toJson()).toList();

@freezed
class WellnessListResponse with _$WellnessListResponse {
  const factory WellnessListResponse({
    required List<Note> notes,
    required String system,
  }) = _WellnessListResponse;

  factory WellnessListResponse.fromJson(Map<String, dynamic> json) =>
      _$WellnessListResponseFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: "notes") required List<Note> notes,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Note with _$Note {
  const factory Note({
    @JsonKey(name: "createdTime") required String createdTime,
    @JsonKey(name: "noteDescription") required String noteDescription,
    @JsonKey(name: "noteType") required String noteType,
    @JsonKey(name: "procuraVisitId")  String? procuraVisitId,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

@freezed
class CareGiver with _$CareGiver {
  const factory CareGiver({
    @JsonKey(name: "careGiverId") String? careGiverId,
    @JsonKey(name: "branchPhone") String? branchPhone,
    @JsonKey(name: "branchEmail") String? branchEmail,
    @JsonKey(name: "firstName")  String? firstName,
    @JsonKey(name: "lastNameInitial") String? lastNameInitial,
    @JsonKey(name: "designation") String? designation,
    @JsonKey(name: "jobTitle")  String? jobTitle,
    @JsonKey(name: "languages") @Default([]) List<Language> languages,
  }) = _CareGiver;

  factory CareGiver.fromJson(Map<String, dynamic> json) =>
      _$CareGiverFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    @JsonKey(name: "link") @Default("") String? link,
  }) = _Photo;

  factory Photo.fromJson(Map<String, String> json) => _$PhotoFromJson(json);
}

@freezed
class Language with _$Language {
  const factory Language({
    @JsonKey(name: "displayName") String? displayName,
  }) = _Language;

  factory Language.fromJson(Map<String, String> json) =>
      _$LanguageFromJson(json);
}
