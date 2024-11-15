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
  @JsonKey(name: "wellnessList")
  List<WellnessList> get wellnessList => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: "wellnessList") List<WellnessList> wellnessList});
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
    Object? wellnessList = null,
  }) {
    return _then(_value.copyWith(
      wellnessList: null == wellnessList
          ? _value.wellnessList
          : wellnessList // ignore: cast_nullable_to_non_nullable
              as List<WellnessList>,
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
  $Res call({@JsonKey(name: "wellnessList") List<WellnessList> wellnessList});
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
    Object? wellnessList = null,
  }) {
    return _then(_$WellnessListResponseImpl(
      wellnessList: null == wellnessList
          ? _value._wellnessList
          : wellnessList // ignore: cast_nullable_to_non_nullable
              as List<WellnessList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WellnessListResponseImpl implements _WellnessListResponse {
  const _$WellnessListResponseImpl(
      {@JsonKey(name: "wellnessList")
      required final List<WellnessList> wellnessList})
      : _wellnessList = wellnessList;

  factory _$WellnessListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WellnessListResponseImplFromJson(json);

  final List<WellnessList> _wellnessList;
  @override
  @JsonKey(name: "wellnessList")
  List<WellnessList> get wellnessList {
    if (_wellnessList is EqualUnmodifiableListView) return _wellnessList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wellnessList);
  }

  @override
  String toString() {
    return 'WellnessListResponse(wellnessList: $wellnessList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WellnessListResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._wellnessList, _wellnessList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_wellnessList));

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
          {@JsonKey(name: "wellnessList")
          required final List<WellnessList> wellnessList}) =
      _$WellnessListResponseImpl;

  factory _WellnessListResponse.fromJson(Map<String, dynamic> json) =
      _$WellnessListResponseImpl.fromJson;

  @override
  @JsonKey(name: "wellnessList")
  List<WellnessList> get wellnessList;

  /// Create a copy of WellnessListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WellnessListResponseImplCopyWith<_$WellnessListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WellnessList _$WellnessListFromJson(Map<String, dynamic> json) {
  return _WellnessList.fromJson(json);
}

/// @nodoc
mixin _$WellnessList {
  @JsonKey(name: "notes")
  List<Note> get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "system")
  String get system => throw _privateConstructorUsedError;

  /// Serializes this WellnessList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WellnessList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WellnessListCopyWith<WellnessList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WellnessListCopyWith<$Res> {
  factory $WellnessListCopyWith(
          WellnessList value, $Res Function(WellnessList) then) =
      _$WellnessListCopyWithImpl<$Res, WellnessList>;
  @useResult
  $Res call(
      {@JsonKey(name: "notes") List<Note> notes,
      @JsonKey(name: "system") String system});
}

/// @nodoc
class _$WellnessListCopyWithImpl<$Res, $Val extends WellnessList>
    implements $WellnessListCopyWith<$Res> {
  _$WellnessListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WellnessList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? system = null,
  }) {
    return _then(_value.copyWith(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      system: null == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WellnessListImplCopyWith<$Res>
    implements $WellnessListCopyWith<$Res> {
  factory _$$WellnessListImplCopyWith(
          _$WellnessListImpl value, $Res Function(_$WellnessListImpl) then) =
      __$$WellnessListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "notes") List<Note> notes,
      @JsonKey(name: "system") String system});
}

/// @nodoc
class __$$WellnessListImplCopyWithImpl<$Res>
    extends _$WellnessListCopyWithImpl<$Res, _$WellnessListImpl>
    implements _$$WellnessListImplCopyWith<$Res> {
  __$$WellnessListImplCopyWithImpl(
      _$WellnessListImpl _value, $Res Function(_$WellnessListImpl) _then)
      : super(_value, _then);

  /// Create a copy of WellnessList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? system = null,
  }) {
    return _then(_$WellnessListImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      system: null == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WellnessListImpl implements _WellnessList {
  const _$WellnessListImpl(
      {@JsonKey(name: "notes") required final List<Note> notes,
      @JsonKey(name: "system") required this.system})
      : _notes = notes;

  factory _$WellnessListImpl.fromJson(Map<String, dynamic> json) =>
      _$$WellnessListImplFromJson(json);

  final List<Note> _notes;
  @override
  @JsonKey(name: "notes")
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  @JsonKey(name: "system")
  final String system;

  @override
  String toString() {
    return 'WellnessList(notes: $notes, system: $system)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WellnessListImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.system, system) || other.system == system));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notes), system);

  /// Create a copy of WellnessList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WellnessListImplCopyWith<_$WellnessListImpl> get copyWith =>
      __$$WellnessListImplCopyWithImpl<_$WellnessListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WellnessListImplToJson(
      this,
    );
  }
}

abstract class _WellnessList implements WellnessList {
  const factory _WellnessList(
          {@JsonKey(name: "notes") required final List<Note> notes,
          @JsonKey(name: "system") required final String system}) =
      _$WellnessListImpl;

  factory _WellnessList.fromJson(Map<String, dynamic> json) =
      _$WellnessListImpl.fromJson;

  @override
  @JsonKey(name: "notes")
  List<Note> get notes;
  @override
  @JsonKey(name: "system")
  String get system;

  /// Create a copy of WellnessList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WellnessListImplCopyWith<_$WellnessListImpl> get copyWith =>
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
  @JsonKey(name: "procuraVisitId")
  String? get procuraVisitId => throw _privateConstructorUsedError;

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
      @JsonKey(name: "procuraVisitId") String? procuraVisitId});
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
    Object? procuraVisitId = freezed,
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
      procuraVisitId: freezed == procuraVisitId
          ? _value.procuraVisitId
          : procuraVisitId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      @JsonKey(name: "procuraVisitId") String? procuraVisitId});
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
    Object? procuraVisitId = freezed,
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
      procuraVisitId: freezed == procuraVisitId
          ? _value.procuraVisitId
          : procuraVisitId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: "procuraVisitId") this.procuraVisitId});

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
  @JsonKey(name: "procuraVisitId")
  final String? procuraVisitId;

  @override
  String toString() {
    return 'Note(createdTime: $createdTime, noteDescription: $noteDescription, noteType: $noteType, procuraVisitId: $procuraVisitId)';
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
            (identical(other.procuraVisitId, procuraVisitId) ||
                other.procuraVisitId == procuraVisitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, createdTime, noteDescription, noteType, procuraVisitId);

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
      @JsonKey(name: "procuraVisitId")
      final String? procuraVisitId}) = _$NoteImpl;

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
  @JsonKey(name: "procuraVisitId")
  String? get procuraVisitId;

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
  String? get careGiverId => throw _privateConstructorUsedError;
  @JsonKey(name: "branchPhone")
  String? get branchPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "branchEmail")
  String? get branchEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastNameInitial")
  String? get lastNameInitial => throw _privateConstructorUsedError;
  @JsonKey(name: "designation")
  String? get designation => throw _privateConstructorUsedError;
  @JsonKey(name: "jobTitle")
  String? get jobTitle => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "careGiverId") String? careGiverId,
      @JsonKey(name: "branchPhone") String? branchPhone,
      @JsonKey(name: "branchEmail") String? branchEmail,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastNameInitial") String? lastNameInitial,
      @JsonKey(name: "designation") String? designation,
      @JsonKey(name: "jobTitle") String? jobTitle,
      @JsonKey(name: "languages") List<Language> languages});
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
    Object? firstName = freezed,
    Object? lastNameInitial = freezed,
    Object? designation = freezed,
    Object? jobTitle = freezed,
    Object? languages = null,
  }) {
    return _then(_value.copyWith(
      careGiverId: freezed == careGiverId
          ? _value.careGiverId
          : careGiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      branchPhone: freezed == branchPhone
          ? _value.branchPhone
          : branchPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      branchEmail: freezed == branchEmail
          ? _value.branchEmail
          : branchEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameInitial: freezed == lastNameInitial
          ? _value.lastNameInitial
          : lastNameInitial // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
    ) as $Val);
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
      {@JsonKey(name: "careGiverId") String? careGiverId,
      @JsonKey(name: "branchPhone") String? branchPhone,
      @JsonKey(name: "branchEmail") String? branchEmail,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastNameInitial") String? lastNameInitial,
      @JsonKey(name: "designation") String? designation,
      @JsonKey(name: "jobTitle") String? jobTitle,
      @JsonKey(name: "languages") List<Language> languages});
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
    Object? firstName = freezed,
    Object? lastNameInitial = freezed,
    Object? designation = freezed,
    Object? jobTitle = freezed,
    Object? languages = null,
  }) {
    return _then(_$CareGiverImpl(
      careGiverId: freezed == careGiverId
          ? _value.careGiverId
          : careGiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      branchPhone: freezed == branchPhone
          ? _value.branchPhone
          : branchPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      branchEmail: freezed == branchEmail
          ? _value.branchEmail
          : branchEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameInitial: freezed == lastNameInitial
          ? _value.lastNameInitial
          : lastNameInitial // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "careGiverId") this.careGiverId,
      @JsonKey(name: "branchPhone") this.branchPhone,
      @JsonKey(name: "branchEmail") this.branchEmail,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastNameInitial") this.lastNameInitial,
      @JsonKey(name: "designation") this.designation,
      @JsonKey(name: "jobTitle") this.jobTitle,
      @JsonKey(name: "languages") final List<Language> languages = const []})
      : _languages = languages;

  factory _$CareGiverImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareGiverImplFromJson(json);

  @override
  @JsonKey(name: "careGiverId")
  final String? careGiverId;
  @override
  @JsonKey(name: "branchPhone")
  final String? branchPhone;
  @override
  @JsonKey(name: "branchEmail")
  final String? branchEmail;
  @override
  @JsonKey(name: "firstName")
  final String? firstName;
  @override
  @JsonKey(name: "lastNameInitial")
  final String? lastNameInitial;
  @override
  @JsonKey(name: "designation")
  final String? designation;
  @override
  @JsonKey(name: "jobTitle")
  final String? jobTitle;
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
    return 'CareGiver(careGiverId: $careGiverId, branchPhone: $branchPhone, branchEmail: $branchEmail, firstName: $firstName, lastNameInitial: $lastNameInitial, designation: $designation, jobTitle: $jobTitle, languages: $languages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareGiverImpl &&
            (identical(other.careGiverId, careGiverId) ||
                other.careGiverId == careGiverId) &&
            (identical(other.branchPhone, branchPhone) ||
                other.branchPhone == branchPhone) &&
            (identical(other.branchEmail, branchEmail) ||
                other.branchEmail == branchEmail) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastNameInitial, lastNameInitial) ||
                other.lastNameInitial == lastNameInitial) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      careGiverId,
      branchPhone,
      branchEmail,
      firstName,
      lastNameInitial,
      designation,
      jobTitle,
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
          {@JsonKey(name: "careGiverId") final String? careGiverId,
          @JsonKey(name: "branchPhone") final String? branchPhone,
          @JsonKey(name: "branchEmail") final String? branchEmail,
          @JsonKey(name: "firstName") final String? firstName,
          @JsonKey(name: "lastNameInitial") final String? lastNameInitial,
          @JsonKey(name: "designation") final String? designation,
          @JsonKey(name: "jobTitle") final String? jobTitle,
          @JsonKey(name: "languages") final List<Language> languages}) =
      _$CareGiverImpl;

  factory _CareGiver.fromJson(Map<String, dynamic> json) =
      _$CareGiverImpl.fromJson;

  @override
  @JsonKey(name: "careGiverId")
  String? get careGiverId;
  @override
  @JsonKey(name: "branchPhone")
  String? get branchPhone;
  @override
  @JsonKey(name: "branchEmail")
  String? get branchEmail;
  @override
  @JsonKey(name: "firstName")
  String? get firstName;
  @override
  @JsonKey(name: "lastNameInitial")
  String? get lastNameInitial;
  @override
  @JsonKey(name: "designation")
  String? get designation;
  @override
  @JsonKey(name: "jobTitle")
  String? get jobTitle;
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
  String? get link => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: "link") String? link});
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
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({@JsonKey(name: "link") String? link});
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
    Object? link = freezed,
  }) {
    return _then(_$PhotoImpl(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoImpl implements _Photo {
  const _$PhotoImpl({@JsonKey(name: "link") this.link = ""});

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  @JsonKey(name: "link")
  final String? link;

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
  const factory _Photo({@JsonKey(name: "link") final String? link}) =
      _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  @JsonKey(name: "link")
  String? get link;

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
  String? get displayName => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: "displayName") String? displayName});
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
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({@JsonKey(name: "displayName") String? displayName});
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
    Object? displayName = freezed,
  }) {
    return _then(_$LanguageImpl(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageImpl implements _Language {
  const _$LanguageImpl({@JsonKey(name: "displayName") this.displayName});

  factory _$LanguageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageImplFromJson(json);

  @override
  @JsonKey(name: "displayName")
  final String? displayName;

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
          {@JsonKey(name: "displayName") final String? displayName}) =
      _$LanguageImpl;

  factory _Language.fromJson(Map<String, dynamic> json) =
      _$LanguageImpl.fromJson;

  @override
  @JsonKey(name: "displayName")
  String? get displayName;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
