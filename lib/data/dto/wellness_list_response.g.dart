// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wellness_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WellnessListResponseImpl _$$WellnessListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WellnessListResponseImpl(
      result: (json['result'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: (json['statusCode'] as num).toInt(),
      success: json['success'] as bool,
      message: json['message'],
    );

Map<String, dynamic> _$$WellnessListResponseImplToJson(
        _$WellnessListResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'statusCode': instance.statusCode,
      'success': instance.success,
      'message': instance.message,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      notes: (json['notes'] as List<dynamic>)
          .map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalElements: (json['totalElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
    };

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      createdTime: json['createdTime'] as String,
      noteDescription: json['noteDescription'] as String,
      noteType: json['noteType'] as String,
      careGiver: CareGiver.fromJson(json['careGiver'] as Map<String, dynamic>),
      procuraVisitId: json['procuraVisitId'] as String,
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'createdTime': instance.createdTime,
      'noteDescription': instance.noteDescription,
      'noteType': instance.noteType,
      'careGiver': instance.careGiver,
      'procuraVisitId': instance.procuraVisitId,
    };

_$CareGiverImpl _$$CareGiverImplFromJson(Map<String, dynamic> json) =>
    _$CareGiverImpl(
      careGiverId: json['careGiverId'],
      branchPhone: json['branchPhone'],
      branchEmail: json['branchEmail'],
      firstName: json['firstName'] as String,
      lastNameInitial: json['lastNameInitial'] as String,
      designation: json['designation'],
      jobTitle: json['jobTitle'],
      photo: Photo.fromJson(Map<String, String>.from(json['photo'] as Map)),
      languages: (json['languages'] as List<dynamic>)
          .map((e) => Language.fromJson(Map<String, String>.from(e as Map)))
          .toList(),
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
      link: json['link'] as String,
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
