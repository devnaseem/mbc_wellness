// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wellness_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WellnessItemModel {
  String get createdTime => throw _privateConstructorUsedError;
  String get noteDescription => throw _privateConstructorUsedError;
  String get noteType => throw _privateConstructorUsedError;
  CareGiverModel get careGiver => throw _privateConstructorUsedError;
  String get procuraVisitId => throw _privateConstructorUsedError;

  /// Create a copy of WellnessItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WellnessItemModelCopyWith<WellnessItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WellnessItemModelCopyWith<$Res> {
  factory $WellnessItemModelCopyWith(
          WellnessItemModel value, $Res Function(WellnessItemModel) then) =
      _$WellnessItemModelCopyWithImpl<$Res, WellnessItemModel>;
  @useResult
  $Res call(
      {String createdTime,
      String noteDescription,
      String noteType,
      CareGiverModel careGiver,
      String procuraVisitId});

  $CareGiverModelCopyWith<$Res> get careGiver;
}

/// @nodoc
class _$WellnessItemModelCopyWithImpl<$Res, $Val extends WellnessItemModel>
    implements $WellnessItemModelCopyWith<$Res> {
  _$WellnessItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WellnessItemModel
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
              as CareGiverModel,
      procuraVisitId: null == procuraVisitId
          ? _value.procuraVisitId
          : procuraVisitId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of WellnessItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CareGiverModelCopyWith<$Res> get careGiver {
    return $CareGiverModelCopyWith<$Res>(_value.careGiver, (value) {
      return _then(_value.copyWith(careGiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WellnessItemModelImplCopyWith<$Res>
    implements $WellnessItemModelCopyWith<$Res> {
  factory _$$WellnessItemModelImplCopyWith(_$WellnessItemModelImpl value,
          $Res Function(_$WellnessItemModelImpl) then) =
      __$$WellnessItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String createdTime,
      String noteDescription,
      String noteType,
      CareGiverModel careGiver,
      String procuraVisitId});

  @override
  $CareGiverModelCopyWith<$Res> get careGiver;
}

/// @nodoc
class __$$WellnessItemModelImplCopyWithImpl<$Res>
    extends _$WellnessItemModelCopyWithImpl<$Res, _$WellnessItemModelImpl>
    implements _$$WellnessItemModelImplCopyWith<$Res> {
  __$$WellnessItemModelImplCopyWithImpl(_$WellnessItemModelImpl _value,
      $Res Function(_$WellnessItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WellnessItemModel
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
    return _then(_$WellnessItemModelImpl(
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
              as CareGiverModel,
      procuraVisitId: null == procuraVisitId
          ? _value.procuraVisitId
          : procuraVisitId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WellnessItemModelImpl implements _WellnessItemModel {
  const _$WellnessItemModelImpl(
      {required this.createdTime,
      required this.noteDescription,
      required this.noteType,
      required this.careGiver,
      required this.procuraVisitId});

  @override
  final String createdTime;
  @override
  final String noteDescription;
  @override
  final String noteType;
  @override
  final CareGiverModel careGiver;
  @override
  final String procuraVisitId;

  @override
  String toString() {
    return 'WellnessItemModel(createdTime: $createdTime, noteDescription: $noteDescription, noteType: $noteType, careGiver: $careGiver, procuraVisitId: $procuraVisitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WellnessItemModelImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, createdTime, noteDescription,
      noteType, careGiver, procuraVisitId);

  /// Create a copy of WellnessItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WellnessItemModelImplCopyWith<_$WellnessItemModelImpl> get copyWith =>
      __$$WellnessItemModelImplCopyWithImpl<_$WellnessItemModelImpl>(
          this, _$identity);
}

abstract class _WellnessItemModel implements WellnessItemModel {
  const factory _WellnessItemModel(
      {required final String createdTime,
      required final String noteDescription,
      required final String noteType,
      required final CareGiverModel careGiver,
      required final String procuraVisitId}) = _$WellnessItemModelImpl;

  @override
  String get createdTime;
  @override
  String get noteDescription;
  @override
  String get noteType;
  @override
  CareGiverModel get careGiver;
  @override
  String get procuraVisitId;

  /// Create a copy of WellnessItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WellnessItemModelImplCopyWith<_$WellnessItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CareGiverModel {
  String get careGiverId => throw _privateConstructorUsedError;
  String get branchPhone => throw _privateConstructorUsedError;
  String get branchEmail => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastNameInitial => throw _privateConstructorUsedError;
  String get designation => throw _privateConstructorUsedError;
  String get jobTitle => throw _privateConstructorUsedError;
  PhotoModel get photo => throw _privateConstructorUsedError;
  List<LanguageModel> get languages => throw _privateConstructorUsedError;

  /// Create a copy of CareGiverModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CareGiverModelCopyWith<CareGiverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareGiverModelCopyWith<$Res> {
  factory $CareGiverModelCopyWith(
          CareGiverModel value, $Res Function(CareGiverModel) then) =
      _$CareGiverModelCopyWithImpl<$Res, CareGiverModel>;
  @useResult
  $Res call(
      {String careGiverId,
      String branchPhone,
      String branchEmail,
      String firstName,
      String lastNameInitial,
      String designation,
      String jobTitle,
      PhotoModel photo,
      List<LanguageModel> languages});

  $PhotoModelCopyWith<$Res> get photo;
}

/// @nodoc
class _$CareGiverModelCopyWithImpl<$Res, $Val extends CareGiverModel>
    implements $CareGiverModelCopyWith<$Res> {
  _$CareGiverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CareGiverModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? careGiverId = null,
    Object? branchPhone = null,
    Object? branchEmail = null,
    Object? firstName = null,
    Object? lastNameInitial = null,
    Object? designation = null,
    Object? jobTitle = null,
    Object? photo = null,
    Object? languages = null,
  }) {
    return _then(_value.copyWith(
      careGiverId: null == careGiverId
          ? _value.careGiverId
          : careGiverId // ignore: cast_nullable_to_non_nullable
              as String,
      branchPhone: null == branchPhone
          ? _value.branchPhone
          : branchPhone // ignore: cast_nullable_to_non_nullable
              as String,
      branchEmail: null == branchEmail
          ? _value.branchEmail
          : branchEmail // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameInitial: null == lastNameInitial
          ? _value.lastNameInitial
          : lastNameInitial // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as PhotoModel,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageModel>,
    ) as $Val);
  }

  /// Create a copy of CareGiverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoModelCopyWith<$Res> get photo {
    return $PhotoModelCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CareGiverModelImplCopyWith<$Res>
    implements $CareGiverModelCopyWith<$Res> {
  factory _$$CareGiverModelImplCopyWith(_$CareGiverModelImpl value,
          $Res Function(_$CareGiverModelImpl) then) =
      __$$CareGiverModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String careGiverId,
      String branchPhone,
      String branchEmail,
      String firstName,
      String lastNameInitial,
      String designation,
      String jobTitle,
      PhotoModel photo,
      List<LanguageModel> languages});

  @override
  $PhotoModelCopyWith<$Res> get photo;
}

/// @nodoc
class __$$CareGiverModelImplCopyWithImpl<$Res>
    extends _$CareGiverModelCopyWithImpl<$Res, _$CareGiverModelImpl>
    implements _$$CareGiverModelImplCopyWith<$Res> {
  __$$CareGiverModelImplCopyWithImpl(
      _$CareGiverModelImpl _value, $Res Function(_$CareGiverModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CareGiverModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? careGiverId = null,
    Object? branchPhone = null,
    Object? branchEmail = null,
    Object? firstName = null,
    Object? lastNameInitial = null,
    Object? designation = null,
    Object? jobTitle = null,
    Object? photo = null,
    Object? languages = null,
  }) {
    return _then(_$CareGiverModelImpl(
      careGiverId: null == careGiverId
          ? _value.careGiverId
          : careGiverId // ignore: cast_nullable_to_non_nullable
              as String,
      branchPhone: null == branchPhone
          ? _value.branchPhone
          : branchPhone // ignore: cast_nullable_to_non_nullable
              as String,
      branchEmail: null == branchEmail
          ? _value.branchEmail
          : branchEmail // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameInitial: null == lastNameInitial
          ? _value.lastNameInitial
          : lastNameInitial // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as PhotoModel,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageModel>,
    ));
  }
}

/// @nodoc

class _$CareGiverModelImpl implements _CareGiverModel {
  const _$CareGiverModelImpl(
      {required this.careGiverId,
      required this.branchPhone,
      required this.branchEmail,
      required this.firstName,
      required this.lastNameInitial,
      required this.designation,
      required this.jobTitle,
      required this.photo,
      required final List<LanguageModel> languages})
      : _languages = languages;

  @override
  final String careGiverId;
  @override
  final String branchPhone;
  @override
  final String branchEmail;
  @override
  final String firstName;
  @override
  final String lastNameInitial;
  @override
  final String designation;
  @override
  final String jobTitle;
  @override
  final PhotoModel photo;
  final List<LanguageModel> _languages;
  @override
  List<LanguageModel> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  String toString() {
    return 'CareGiverModel(careGiverId: $careGiverId, branchPhone: $branchPhone, branchEmail: $branchEmail, firstName: $firstName, lastNameInitial: $lastNameInitial, designation: $designation, jobTitle: $jobTitle, photo: $photo, languages: $languages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareGiverModelImpl &&
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
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

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
      photo,
      const DeepCollectionEquality().hash(_languages));

  /// Create a copy of CareGiverModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CareGiverModelImplCopyWith<_$CareGiverModelImpl> get copyWith =>
      __$$CareGiverModelImplCopyWithImpl<_$CareGiverModelImpl>(
          this, _$identity);
}

abstract class _CareGiverModel implements CareGiverModel {
  const factory _CareGiverModel(
      {required final String careGiverId,
      required final String branchPhone,
      required final String branchEmail,
      required final String firstName,
      required final String lastNameInitial,
      required final String designation,
      required final String jobTitle,
      required final PhotoModel photo,
      required final List<LanguageModel> languages}) = _$CareGiverModelImpl;

  @override
  String get careGiverId;
  @override
  String get branchPhone;
  @override
  String get branchEmail;
  @override
  String get firstName;
  @override
  String get lastNameInitial;
  @override
  String get designation;
  @override
  String get jobTitle;
  @override
  PhotoModel get photo;
  @override
  List<LanguageModel> get languages;

  /// Create a copy of CareGiverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareGiverModelImplCopyWith<_$CareGiverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhotoModel {
  String get link => throw _privateConstructorUsedError;

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoModelCopyWith<PhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoModelCopyWith<$Res> {
  factory $PhotoModelCopyWith(
          PhotoModel value, $Res Function(PhotoModel) then) =
      _$PhotoModelCopyWithImpl<$Res, PhotoModel>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class _$PhotoModelCopyWithImpl<$Res, $Val extends PhotoModel>
    implements $PhotoModelCopyWith<$Res> {
  _$PhotoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoModel
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
abstract class _$$PhotoModelImplCopyWith<$Res>
    implements $PhotoModelCopyWith<$Res> {
  factory _$$PhotoModelImplCopyWith(
          _$PhotoModelImpl value, $Res Function(_$PhotoModelImpl) then) =
      __$$PhotoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$PhotoModelImplCopyWithImpl<$Res>
    extends _$PhotoModelCopyWithImpl<$Res, _$PhotoModelImpl>
    implements _$$PhotoModelImplCopyWith<$Res> {
  __$$PhotoModelImplCopyWithImpl(
      _$PhotoModelImpl _value, $Res Function(_$PhotoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$PhotoModelImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhotoModelImpl implements _PhotoModel {
  const _$PhotoModelImpl({required this.link});

  @override
  final String link;

  @override
  String toString() {
    return 'PhotoModel(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoModelImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      __$$PhotoModelImplCopyWithImpl<_$PhotoModelImpl>(this, _$identity);
}

abstract class _PhotoModel implements PhotoModel {
  const factory _PhotoModel({required final String link}) = _$PhotoModelImpl;

  @override
  String get link;

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LanguageModel {
  String get displayName => throw _privateConstructorUsedError;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageModelCopyWith<LanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageModelCopyWith<$Res> {
  factory $LanguageModelCopyWith(
          LanguageModel value, $Res Function(LanguageModel) then) =
      _$LanguageModelCopyWithImpl<$Res, LanguageModel>;
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class _$LanguageModelCopyWithImpl<$Res, $Val extends LanguageModel>
    implements $LanguageModelCopyWith<$Res> {
  _$LanguageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageModel
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
abstract class _$$LanguageModelImplCopyWith<$Res>
    implements $LanguageModelCopyWith<$Res> {
  factory _$$LanguageModelImplCopyWith(
          _$LanguageModelImpl value, $Res Function(_$LanguageModelImpl) then) =
      __$$LanguageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class __$$LanguageModelImplCopyWithImpl<$Res>
    extends _$LanguageModelCopyWithImpl<$Res, _$LanguageModelImpl>
    implements _$$LanguageModelImplCopyWith<$Res> {
  __$$LanguageModelImplCopyWithImpl(
      _$LanguageModelImpl _value, $Res Function(_$LanguageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_$LanguageModelImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LanguageModelImpl implements _LanguageModel {
  const _$LanguageModelImpl({required this.displayName});

  @override
  final String displayName;

  @override
  String toString() {
    return 'LanguageModel(displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageModelImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName);

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageModelImplCopyWith<_$LanguageModelImpl> get copyWith =>
      __$$LanguageModelImplCopyWithImpl<_$LanguageModelImpl>(this, _$identity);
}

abstract class _LanguageModel implements LanguageModel {
  const factory _LanguageModel({required final String displayName}) =
      _$LanguageModelImpl;

  @override
  String get displayName;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageModelImplCopyWith<_$LanguageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
