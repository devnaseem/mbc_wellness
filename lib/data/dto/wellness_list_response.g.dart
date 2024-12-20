// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wellness_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WellnessListResponseImpl _$$WellnessListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WellnessListResponseImpl(
      notes: (json['notes'] as List<dynamic>)
          .map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
      system: json['system'] as String,
    );

Map<String, dynamic> _$$WellnessListResponseImplToJson(
        _$WellnessListResponseImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'system': instance.system,
    };

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      createdTime: DateTime.parse(json['createdTime'] as String),
      noteDescription: json['noteDescription'] as String,
      noteType: json['noteType'] as String,
      careGiver: CareGiver.fromJson(json['careGiver'] as Map<String, dynamic>),
      procuraVisitId: json['procuraVisitId'] as String,
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'createdTime': instance.createdTime.toIso8601String(),
      'noteDescription': instance.noteDescription,
      'noteType': instance.noteType,
      'careGiver': instance.careGiver,
      'procuraVisitId': instance.procuraVisitId,
    };

_$CareGiverImpl _$$CareGiverImplFromJson(Map<String, dynamic> json) =>
    _$CareGiverImpl(
      careGiverId: json['careGiverId'] as String?,
      branchPhone: json['branchPhone'] as String?,
      branchEmail: json['branchEmail'] as String?,
      firstName: json['firstName'] as String,
      lastNameInitial: json['lastNameInitial'] as String,
      designation: json['designation'] as String?,
      jobTitle: json['jobTitle'] as String?,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>),
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CareGiverImplToJson(_$CareGiverImpl instance) =>
    <String, dynamic>{
      'careGiverId': instance.careGiverId,
      'branchPhone': instance.branchPhone,
      'branchEmail': instance.branchEmail,
      'firstName': instance.firstName,
      'lastNameInitial': instance.lastNameInitial,
      'designation': instance.designation,
      'jobTitle': instance.jobTitle,
      'photo': instance.photo,
      'languages': instance.languages,
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'link': instance.link,
    };

_$LanguageImpl _$$LanguageImplFromJson(Map<String, dynamic> json) =>
    _$LanguageImpl(
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$$LanguageImplToJson(_$LanguageImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
    };
