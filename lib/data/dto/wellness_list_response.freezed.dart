// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wellness_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WellnessListResponse _$WellnessListResponseFromJson(Map<String, dynamic> json) {
  return _WellnessListResponse.fromJson(json);
}

/// @nodoc
mixin _$WellnessListResponse {
  @JsonKey(name: "result")
  List<Result> get result => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  int get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;

  /// Serializes this WellnessListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WellnessListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WellnessListResponseCopyWith<WellnessListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WellnessListResponseCopyWith<$Res> {
  factory $WellnessListResponseCopyWith(WellnessListResponse value,
          $Res Function(WellnessListResponse) then) =
      _$WellnessListResponseCopyWithImpl<$Res, WellnessListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "result") List<Result> result,
      @JsonKey(name: "statusCode") int statusCode,
      @JsonKey(name: "success") bool success,
      @JsonKey(name: "message") dynamic message});
}

/// @nodoc
class _$WellnessListResponseCopyWithImpl<$Res,
        $Val extends WellnessListResponse>
    implements $WellnessListResponseCopyWith<$Res> {
  _$WellnessListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WellnessListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? statusCode = null,
    Object? success = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WellnessListResponseImplCopyWith<$Res>
    implements $WellnessListResponseCopyWith<$Res> {
  factory _$$WellnessListResponseImplCopyWith(_$WellnessListResponseImpl value,
          $Res Function(_$WellnessListResponseImpl) then) =
      __$$WellnessListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "result") List<Result> result,
      @JsonKey(name: "statusCode") int statusCode,
      @JsonKey(name: "success") bool success,
      @JsonKey(name: "message") dynamic message});
}

/// @nodoc
class __$$WellnessListResponseImplCopyWithImpl<$Res>
    extends _$WellnessListResponseCopyWithImpl<$Res, _$WellnessListResponseImpl>
    implements _$$WellnessListResponseImplCopyWith<$Res> {
  __$$WellnessListResponseImplCopyWithImpl(_$WellnessListResponseImpl _value,
      $Res Function(_$WellnessListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WellnessListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? statusCode = null,
    Object? success = null,
    Object? message = freezed,
  }) {
    return _then(_$WellnessListResponseImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WellnessListResponseImpl implements _WellnessListResponse {
  const _$WellnessListResponseImpl(
      {@JsonKey(name: "result") required final List<Result> result,
      @JsonKey(name: "statusCode") required this.statusCode,
      @JsonKey(name: "success") required this.success,
      @JsonKey(name: "message") required this.message})
      : _result = result;

  factory _$WellnessListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WellnessListResponseImplFromJson(json);

  final List<Result> _result;
  @override
  @JsonKey(name: "result")
  List<Result> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  @JsonKey(name: "statusCode")
  final int statusCode;
  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "message")
  final dynamic message;

  @override
  String toString() {
    return 'WellnessListResponse(result: $result, statusCode: $statusCode, success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WellnessListResponseImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_result),
      statusCode,
      success,
      const DeepCollectionEquality().hash(message));

  /// Create a copy of WellnessListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WellnessListResponseImplCopyWith<_$WellnessListResponseImpl>
      get copyWith =>
          __$$WellnessListResponseImplCopyWithImpl<_$WellnessListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WellnessListResponseImplToJson(
      this,
    );
  }
}

abstract class _WellnessListResponse implements WellnessListResponse {
  const factory _WellnessListResponse(
          {@JsonKey(name: "result") required final List<Result> result,
          @JsonKey(name: "statusCode") required final int statusCode,
          @JsonKey(name: "success") required final bool success,
          @JsonKey(name: "message") required final dynamic message}) =
      _$WellnessListResponseImpl;

  factory _WellnessListResponse.fromJson(Map<String, dynamic> json) =
      _$WellnessListResponseImpl.fromJson;

  @override
  @JsonKey(name: "result")
  List<Result> get result;
  @override
  @JsonKey(name: "statusCode")
  int get statusCode;
  @override
  @JsonKey(name: "success")
  bool get success;
  @override
  @JsonKey(name: "message")
  dynamic get message;

  /// Create a copy of WellnessListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WellnessListResponseImplCopyWith<_$WellnessListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: "notes")
  List<Note> get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "totalElements")
  int get totalElements => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPages")
  int get totalPages => throw _privateConstructorUsedError;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {@JsonKey(name: "notes") List<Note> notes,
      @JsonKey(name: "totalElements") int totalElements,
      @JsonKey(name: "totalPages") int totalPages});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? totalElements = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "notes") List<Note> notes,
      @JsonKey(name: "totalElements") int totalElements,
      @JsonKey(name: "totalPages") int totalPages});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? totalElements = null,
    Object? totalPages = null,
  }) {
    return _then(_$ResultImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {@JsonKey(name: "notes") required final List<Note> notes,
      @JsonKey(name: "totalElements") required this.totalElements,
      @JsonKey(name: "totalPages") required this.totalPages})
      : _notes = notes;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  final List<Note> _notes;
  @override
  @JsonKey(name: "notes")
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  @JsonKey(name: "totalElements")
  final int totalElements;
  @override
  @JsonKey(name: "totalPages")
  final int totalPages;

  @override
  String toString() {
    return 'Result(notes: $notes, totalElements: $totalElements, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_notes), totalElements, totalPages);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
          {@JsonKey(name: "notes") required final List<Note> notes,
          @JsonKey(name: "totalElements") required final int totalElements,
          @JsonKey(name: "totalPages") required final int totalPages}) =
      _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: "notes")
  List<Note> get notes;
  @override
  @JsonKey(name: "totalElements")
  int get totalElements;
  @override
  @JsonKey(name: "totalPages")
  int get totalPages;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Note _$NoteFromJson(Map<String, dynamic> json) {
  return _Note.fromJson(json);
}

/// @nodoc
mixin _$Note {
  @JsonKey(name: "createdTime")
  String get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: "noteDescription")
  String get noteDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "noteType")
  String get noteType => throw _privateConstructorUsedError;
  @JsonKey(name: "careGiver")
  CareGiver get careGiver => throw _privateConstructorUsedError;
  @JsonKey(name: "procuraVisitId")
  String get procuraVisitId => throw _privateConstructorUsedError;

  /// Serializes this Note to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Note
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res, Note>;
  @useResult
  $Res call(
      {@JsonKey(name: "createdTime") String createdTime,
      @JsonKey(name: "noteDescription") String noteDescription,
      @JsonKey(name: "noteType") String noteType,
      @JsonKey(name: "careGiver") CareGiver careGiver,
      @JsonKey(name: "procuraVisitId") String procuraVisitId});

  $CareGiverCopyWith<$Res> get careGiver;
}

/// @nodoc
class _$NoteCopyWithImpl<$Res, $Val extends Note>
    implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Note
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdTime = null,
    Object? noteDescription = null,
    Object? noteType = null,
    Object? careGiver = null,
    Object? procuraVisitId = null,
  }) {
    return _then(_value.copyWith(
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String,
      noteDescription: null == noteDescription
          ? _value.noteDescription
          : noteDescription // ignore: cast_nullable_to_non_nullable
              as String,
      noteType: null == noteType
          ? _value.noteType
          : noteType // ignore: cast_nullable_to_non_nullable
              as String,
      careGiver: null == careGiver
          ? _value.careGiver
          : careGiver // ignore: cast_nullable_to_non_nullable
              as CareGiver,
      procuraVisitId: null == procuraVisitId
          ? _value.procuraVisitId
          : procuraVisitId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Note
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CareGiverCopyWith<$Res> get careGiver {
    return $CareGiverCopyWith<$Res>(_value.careGiver, (value) {
      return _then(_value.copyWith(careGiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteImplCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$$NoteImplCopyWith(
          _$NoteImpl value, $Res Function(_$NoteImpl) then) =
      __$$NoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "createdTime") String createdTime,
      @JsonKey(name: "noteDescription") String noteDescription,
      @JsonKey(name: "noteType") String noteType,
      @JsonKey(name: "careGiver") CareGiver careGiver,
      @JsonKey(name: "procuraVisitId") String procuraVisitId});

  @override
  $CareGiverCopyWith<$Res> get careGiver;
}

/// @nodoc
class __$$NoteImplCopyWithImpl<$Res>
    extends _$NoteCopyWithImpl<$Res, _$NoteImpl>
    implements _$$NoteImplCopyWith<$Res> {
  __$$NoteImplCopyWithImpl(_$NoteImpl _value, $Res Function(_$NoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Note
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdTime = null,
    Object? noteDescription = null,
    Object? noteType = null,
    Object? careGiver = null,
    Object? procuraVisitId = null,
  }) {
    return _then(_$NoteImpl(
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String,
      noteDescription: null == noteDescription
          ? _value.noteDescription
          : noteDescription // ignore: cast_nullable_to_non_nullable
              as String,
      noteType: null == noteType
          ? _value.noteType
          : noteType // ignore: cast_nullable_to_non_nullable
              as String,
      careGiver: null == careGiver
          ? _value.careGiver
          : careGiver // ignore: cast_nullable_to_non_nullable
              as CareGiver,
      procuraVisitId: null == procuraVisitId
          ? _value.procuraVisitId
          : procuraVisitId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteImpl implements _Note {
  const _$NoteImpl(
      {@JsonKey(name: "createdTime") required this.createdTime,
      @JsonKey(name: "noteDescription") required this.noteDescription,
      @JsonKey(name: "noteType") required this.noteType,
      @JsonKey(name: "careGiver") required this.careGiver,
      @JsonKey(name: "procuraVisitId") required this.procuraVisitId});

  factory _$NoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteImplFromJson(json);

  @override
  @JsonKey(name: "createdTime")
  final String createdTime;
  @override
  @JsonKey(name: "noteDescription")
  final String noteDescription;
  @override
  @JsonKey(name: "noteType")
  final String noteType;
  @override
  @JsonKey(name: "careGiver")
  final CareGiver careGiver;
  @override
  @JsonKey(name: "procuraVisitId")
  final String procuraVisitId;

  @override
  String toString() {
    return 'Note(createdTime: $createdTime, noteDescription: $noteDescription, noteType: $noteType, careGiver: $careGiver, procuraVisitId: $procuraVisitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.noteDescription, noteDescription) ||
                other.noteDescription == noteDescription) &&
            (identical(other.noteType, noteType) ||
                other.noteType == noteType) &&
            (identical(other.careGiver, careGiver) ||
                other.careGiver == careGiver) &&
            (identical(other.procuraVisitId, procuraVisitId) ||
                other.procuraVisitId == procuraVisitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdTime, noteDescription,
      noteType, careGiver, procuraVisitId);

  /// Create a copy of Note
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      __$$NoteImplCopyWithImpl<_$NoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteImplToJson(
      this,
    );
  }
}

abstract class _Note implements Note {
  const factory _Note(
      {@JsonKey(name: "createdTime") required final String createdTime,
      @JsonKey(name: "noteDescription") required final String noteDescription,
      @JsonKey(name: "noteType") required final String noteType,
      @JsonKey(name: "careGiver") required final CareGiver careGiver,
      @JsonKey(name: "procuraVisitId")
      required final String procuraVisitId}) = _$NoteImpl;

  factory _Note.fromJson(Map<String, dynamic> json) = _$NoteImpl.fromJson;

  @override
  @JsonKey(name: "createdTime")
  String get createdTime;
  @override
  @JsonKey(name: "noteDescription")
  String get noteDescription;
  @override
  @JsonKey(name: "noteType")
  String get noteType;
  @override
  @JsonKey(name: "careGiver")
  CareGiver get careGiver;
  @override
  @JsonKey(name: "procuraVisitId")
  String get procuraVisitId;

  /// Create a copy of Note
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CareGiver _$CareGiverFromJson(Map<String, dynamic> json) {
  return _CareGiver.fromJson(json);
}

/// @nodoc
mixin _$CareGiver {
  @JsonKey(name: "careGiverId")
  dynamic get careGiverId => throw _privateConstructorUsedError;
  @JsonKey(name: "branchPhone")
  dynamic get branchPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "branchEmail")
  dynamic get branchEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastNameInitial")
  String get lastNameInitial => throw _privateConstructorUsedError;
  @JsonKey(name: "designation")
  dynamic get designation => throw _privateConstructorUsedError;
  @JsonKey(name: "jobTitle")
  dynamic get jobTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  Photo get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "languages")
  List<Language> get languages => throw _privateConstructorUsedError;

  /// Serializes this CareGiver to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CareGiver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CareGiverCopyWith<CareGiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareGiverCopyWith<$Res> {
  factory $CareGiverCopyWith(CareGiver value, $Res Function(CareGiver) then) =
      _$CareGiverCopyWithImpl<$Res, CareGiver>;
  @useResult
  $Res call(
      {@JsonKey(name: "careGiverId") dynamic careGiverId,
      @JsonKey(name: "branchPhone") dynamic branchPhone,
      @JsonKey(name: "branchEmail") dynamic branchEmail,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastNameInitial") String lastNameInitial,
      @JsonKey(name: "designation") dynamic designation,
      @JsonKey(name: "jobTitle") dynamic jobTitle,
      @JsonKey(name: "photo") Photo photo,
      @JsonKey(name: "languages") List<Language> languages});

  $PhotoCopyWith<$Res> get photo;
}

/// @nodoc
class _$CareGiverCopyWithImpl<$Res, $Val extends CareGiver>
    implements $CareGiverCopyWith<$Res> {
  _$CareGiverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CareGiver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? careGiverId = freezed,
    Object? branchPhone = freezed,
    Object? branchEmail = freezed,
    Object? firstName = null,
    Object? lastNameInitial = null,
    Object? designation = freezed,
    Object? jobTitle = freezed,
    Object? photo = null,
    Object? languages = null,
  }) {
    return _then(_value.copyWith(
      careGiverId: freezed == careGiverId
          ? _value.careGiverId
          : careGiverId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      branchPhone: freezed == branchPhone
          ? _value.branchPhone
          : branchPhone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      branchEmail: freezed == branchEmail
          ? _value.branchEmail
          : branchEmail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameInitial: null == lastNameInitial
          ? _value.lastNameInitial
          : lastNameInitial // ignore: cast_nullable_to_non_nullable
              as String,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
    ) as $Val);
  }

  /// Create a copy of CareGiver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res> get photo {
    return $PhotoCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CareGiverImplCopyWith<$Res>
    implements $CareGiverCopyWith<$Res> {
  factory _$$CareGiverImplCopyWith(
          _$CareGiverImpl value, $Res Function(_$CareGiverImpl) then) =
      __$$CareGiverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "careGiverId") dynamic careGiverId,
      @JsonKey(name: "branchPhone") dynamic branchPhone,
      @JsonKey(name: "branchEmail") dynamic branchEmail,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastNameInitial") String lastNameInitial,
      @JsonKey(name: "designation") dynamic designation,
      @JsonKey(name: "jobTitle") dynamic jobTitle,
      @JsonKey(name: "photo") Photo photo,
      @JsonKey(name: "languages") List<Language> languages});

  @override
  $PhotoCopyWith<$Res> get photo;
}

/// @nodoc
class __$$CareGiverImplCopyWithImpl<$Res>
    extends _$CareGiverCopyWithImpl<$Res, _$CareGiverImpl>
    implements _$$CareGiverImplCopyWith<$Res> {
  __$$CareGiverImplCopyWithImpl(
      _$CareGiverImpl _value, $Res Function(_$CareGiverImpl) _then)
      : super(_value, _then);

  /// Create a copy of CareGiver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? careGiverId = freezed,
    Object? branchPhone = freezed,
    Object? branchEmail = freezed,
    Object? firstName = null,
    Object? lastNameInitial = null,
    Object? designation = freezed,
    Object? jobTitle = freezed,
    Object? photo = null,
    Object? languages = null,
  }) {
    return _then(_$CareGiverImpl(
      careGiverId: freezed == careGiverId
          ? _value.careGiverId
          : careGiverId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      branchPhone: freezed == branchPhone
          ? _value.branchPhone
          : branchPhone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      branchEmail: freezed == branchEmail
          ? _value.branchEmail
          : branchEmail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameInitial: null == lastNameInitial
          ? _value.lastNameInitial
          : lastNameInitial // ignore: cast_nullable_to_non_nullable
              as String,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CareGiverImpl implements _CareGiver {
  const _$CareGiverImpl(
      {@JsonKey(name: "careGiverId") required this.careGiverId,
      @JsonKey(name: "branchPhone") required this.branchPhone,
      @JsonKey(name: "branchEmail") required this.branchEmail,
      @JsonKey(name: "firstName") required this.firstName,
      @JsonKey(name: "lastNameInitial") required this.lastNameInitial,
      @JsonKey(name: "designation") required this.designation,
      @JsonKey(name: "jobTitle") required this.jobTitle,
      @JsonKey(name: "photo") required this.photo,
      @JsonKey(name: "languages") required final List<Language> languages})
      : _languages = languages;

  factory _$CareGiverImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareGiverImplFromJson(json);

  @override
  @JsonKey(name: "careGiverId")
  final dynamic careGiverId;
  @override
  @JsonKey(name: "branchPhone")
  final dynamic branchPhone;
  @override
  @JsonKey(name: "branchEmail")
  final dynamic branchEmail;
  @override
  @JsonKey(name: "firstName")
  final String firstName;
  @override
  @JsonKey(name: "lastNameInitial")
  final String lastNameInitial;
  @override
  @JsonKey(name: "designation")
  final dynamic designation;
  @override
  @JsonKey(name: "jobTitle")
  final dynamic jobTitle;
  @override
  @JsonKey(name: "photo")
  final Photo photo;
  final List<Language> _languages;
  @override
  @JsonKey(name: "languages")
  List<Language> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  String toString() {
    return 'CareGiver(careGiverId: $careGiverId, branchPhone: $branchPhone, branchEmail: $branchEmail, firstName: $firstName, lastNameInitial: $lastNameInitial, designation: $designation, jobTitle: $jobTitle, photo: $photo, languages: $languages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareGiverImpl &&
            const DeepCollectionEquality()
                .equals(other.careGiverId, careGiverId) &&
            const DeepCollectionEquality()
                .equals(other.branchPhone, branchPhone) &&
            const DeepCollectionEquality()
                .equals(other.branchEmail, branchEmail) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastNameInitial, lastNameInitial) ||
                other.lastNameInitial == lastNameInitial) &&
            const DeepCollectionEquality()
                .equals(other.designation, designation) &&
            const DeepCollectionEquality().equals(other.jobTitle, jobTitle) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(careGiverId),
      const DeepCollectionEquality().hash(branchPhone),
      const DeepCollectionEquality().hash(branchEmail),
      firstName,
      lastNameInitial,
      const DeepCollectionEquality().hash(designation),
      const DeepCollectionEquality().hash(jobTitle),
      photo,
      const DeepCollectionEquality().hash(_languages));

  /// Create a copy of CareGiver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CareGiverImplCopyWith<_$CareGiverImpl> get copyWith =>
      __$$CareGiverImplCopyWithImpl<_$CareGiverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CareGiverImplToJson(
      this,
    );
  }
}

abstract class _CareGiver implements CareGiver {
  const factory _CareGiver(
      {@JsonKey(name: "careGiverId") required final dynamic careGiverId,
      @JsonKey(name: "branchPhone") required final dynamic branchPhone,
      @JsonKey(name: "branchEmail") required final dynamic branchEmail,
      @JsonKey(name: "firstName") required final String firstName,
      @JsonKey(name: "lastNameInitial") required final String lastNameInitial,
      @JsonKey(name: "designation") required final dynamic designation,
      @JsonKey(name: "jobTitle") required final dynamic jobTitle,
      @JsonKey(name: "photo") required final Photo photo,
      @JsonKey(name: "languages")
      required final List<Language> languages}) = _$CareGiverImpl;

  factory _CareGiver.fromJson(Map<String, dynamic> json) =
      _$CareGiverImpl.fromJson;

  @override
  @JsonKey(name: "careGiverId")
  dynamic get careGiverId;
  @override
  @JsonKey(name: "branchPhone")
  dynamic get branchPhone;
  @override
  @JsonKey(name: "branchEmail")
  dynamic get branchEmail;
  @override
  @JsonKey(name: "firstName")
  String get firstName;
  @override
  @JsonKey(name: "lastNameInitial")
  String get lastNameInitial;
  @override
  @JsonKey(name: "designation")
  dynamic get designation;
  @override
  @JsonKey(name: "jobTitle")
  dynamic get jobTitle;
  @override
  @JsonKey(name: "photo")
  Photo get photo;
  @override
  @JsonKey(name: "languages")
  List<Language> get languages;

  /// Create a copy of CareGiver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareGiverImplCopyWith<_$CareGiverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  @JsonKey(name: "link")
  String get link => throw _privateConstructorUsedError;

  /// Serializes this Photo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call({@JsonKey(name: "link") String link});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(
          _$PhotoImpl value, $Res Function(_$PhotoImpl) then) =
      __$$PhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "link") String link});
}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$PhotoImpl>
    implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(
      _$PhotoImpl _value, $Res Function(_$PhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$PhotoImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoImpl implements _Photo {
  const _$PhotoImpl({@JsonKey(name: "link") required this.link});

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  @JsonKey(name: "link")
  final String link;

  @override
  String toString() {
    return 'Photo(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, link);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoImplToJson(
      this,
    );
  }
}

abstract class _Photo implements Photo {
  const factory _Photo({@JsonKey(name: "link") required final String link}) =
      _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  @JsonKey(name: "link")
  String get link;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
mixin _$Language {
  @JsonKey(name: "displayName")
  String get displayName => throw _privateConstructorUsedError;

  /// Serializes this Language to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res, Language>;
  @useResult
  $Res call({@JsonKey(name: "displayName") String displayName});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res, $Val extends Language>
    implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageImplCopyWith<$Res>
    implements $LanguageCopyWith<$Res> {
  factory _$$LanguageImplCopyWith(
          _$LanguageImpl value, $Res Function(_$LanguageImpl) then) =
      __$$LanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "displayName") String displayName});
}

/// @nodoc
class __$$LanguageImplCopyWithImpl<$Res>
    extends _$LanguageCopyWithImpl<$Res, _$LanguageImpl>
    implements _$$LanguageImplCopyWith<$Res> {
  __$$LanguageImplCopyWithImpl(
      _$LanguageImpl _value, $Res Function(_$LanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_$LanguageImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageImpl implements _Language {
  const _$LanguageImpl(
      {@JsonKey(name: "displayName") required this.displayName});

  factory _$LanguageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageImplFromJson(json);

  @override
  @JsonKey(name: "displayName")
  final String displayName;

  @override
  String toString() {
    return 'Language(displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, displayName);

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      __$$LanguageImplCopyWithImpl<_$LanguageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageImplToJson(
      this,
    );
  }
}

abstract class _Language implements Language {
  const factory _Language(
          {@JsonKey(name: "displayName") required final String displayName}) =
      _$LanguageImpl;

  factory _Language.fromJson(Map<String, dynamic> json) =
      _$LanguageImpl.fromJson;

  @override
  @JsonKey(name: "displayName")
  String get displayName;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
