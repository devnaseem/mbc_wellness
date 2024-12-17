// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wellness_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WellnessState {
  AsyncValue<List<WellnessGalleryItem>> get wellnessList =>
      throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get shouldLoadMore => throw _privateConstructorUsedError;
  DateFilter get selectedFilter => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Create a copy of WellnessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WellnessStateCopyWith<WellnessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WellnessStateCopyWith<$Res> {
  factory $WellnessStateCopyWith(
          WellnessState value, $Res Function(WellnessState) then) =
      _$WellnessStateCopyWithImpl<$Res, WellnessState>;
  @useResult
  $Res call(
      {AsyncValue<List<WellnessGalleryItem>> wellnessList,
      bool isLoadingMore,
      bool shouldLoadMore,
      DateFilter selectedFilter,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class _$WellnessStateCopyWithImpl<$Res, $Val extends WellnessState>
    implements $WellnessStateCopyWith<$Res> {
  _$WellnessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WellnessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wellnessList = null,
    Object? isLoadingMore = null,
    Object? shouldLoadMore = null,
    Object? selectedFilter = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      wellnessList: null == wellnessList
          ? _value.wellnessList
          : wellnessList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<WellnessGalleryItem>>,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldLoadMore: null == shouldLoadMore
          ? _value.shouldLoadMore
          : shouldLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as DateFilter,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WellnessStateImplCopyWith<$Res>
    implements $WellnessStateCopyWith<$Res> {
  factory _$$WellnessStateImplCopyWith(
          _$WellnessStateImpl value, $Res Function(_$WellnessStateImpl) then) =
      __$$WellnessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<WellnessGalleryItem>> wellnessList,
      bool isLoadingMore,
      bool shouldLoadMore,
      DateFilter selectedFilter,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$WellnessStateImplCopyWithImpl<$Res>
    extends _$WellnessStateCopyWithImpl<$Res, _$WellnessStateImpl>
    implements _$$WellnessStateImplCopyWith<$Res> {
  __$$WellnessStateImplCopyWithImpl(
      _$WellnessStateImpl _value, $Res Function(_$WellnessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WellnessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wellnessList = null,
    Object? isLoadingMore = null,
    Object? shouldLoadMore = null,
    Object? selectedFilter = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$WellnessStateImpl(
      wellnessList: null == wellnessList
          ? _value.wellnessList
          : wellnessList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<WellnessGalleryItem>>,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldLoadMore: null == shouldLoadMore
          ? _value.shouldLoadMore
          : shouldLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as DateFilter,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$WellnessStateImpl implements _WellnessState {
  const _$WellnessStateImpl(
      {this.wellnessList = const AsyncLoading(),
      this.isLoadingMore = false,
      this.shouldLoadMore = true,
      this.selectedFilter = DateFilter.allTime,
      this.startDate,
      this.endDate});

  @override
  @JsonKey()
  final AsyncValue<List<WellnessGalleryItem>> wellnessList;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool shouldLoadMore;
  @override
  @JsonKey()
  final DateFilter selectedFilter;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'WellnessState(wellnessList: $wellnessList, isLoadingMore: $isLoadingMore, shouldLoadMore: $shouldLoadMore, selectedFilter: $selectedFilter, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WellnessStateImpl &&
            (identical(other.wellnessList, wellnessList) ||
                other.wellnessList == wellnessList) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.shouldLoadMore, shouldLoadMore) ||
                other.shouldLoadMore == shouldLoadMore) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wellnessList, isLoadingMore,
      shouldLoadMore, selectedFilter, startDate, endDate);

  /// Create a copy of WellnessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WellnessStateImplCopyWith<_$WellnessStateImpl> get copyWith =>
      __$$WellnessStateImplCopyWithImpl<_$WellnessStateImpl>(this, _$identity);
}

abstract class _WellnessState implements WellnessState {
  const factory _WellnessState(
      {final AsyncValue<List<WellnessGalleryItem>> wellnessList,
      final bool isLoadingMore,
      final bool shouldLoadMore,
      final DateFilter selectedFilter,
      final DateTime? startDate,
      final DateTime? endDate}) = _$WellnessStateImpl;

  @override
  AsyncValue<List<WellnessGalleryItem>> get wellnessList;
  @override
  bool get isLoadingMore;
  @override
  bool get shouldLoadMore;
  @override
  DateFilter get selectedFilter;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;

  /// Create a copy of WellnessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WellnessStateImplCopyWith<_$WellnessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WellnessGalleryItem {
  WellnessItemModel get wellnessItem => throw _privateConstructorUsedError;
  List<GalleryItemModel> get galleryItems => throw _privateConstructorUsedError;

  /// Create a copy of WellnessGalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WellnessGalleryItemCopyWith<WellnessGalleryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WellnessGalleryItemCopyWith<$Res> {
  factory $WellnessGalleryItemCopyWith(
          WellnessGalleryItem value, $Res Function(WellnessGalleryItem) then) =
      _$WellnessGalleryItemCopyWithImpl<$Res, WellnessGalleryItem>;
  @useResult
  $Res call(
      {WellnessItemModel wellnessItem, List<GalleryItemModel> galleryItems});

  $WellnessItemModelCopyWith<$Res> get wellnessItem;
}

/// @nodoc
class _$WellnessGalleryItemCopyWithImpl<$Res, $Val extends WellnessGalleryItem>
    implements $WellnessGalleryItemCopyWith<$Res> {
  _$WellnessGalleryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WellnessGalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wellnessItem = null,
    Object? galleryItems = null,
  }) {
    return _then(_value.copyWith(
      wellnessItem: null == wellnessItem
          ? _value.wellnessItem
          : wellnessItem // ignore: cast_nullable_to_non_nullable
              as WellnessItemModel,
      galleryItems: null == galleryItems
          ? _value.galleryItems
          : galleryItems // ignore: cast_nullable_to_non_nullable
              as List<GalleryItemModel>,
    ) as $Val);
  }

  /// Create a copy of WellnessGalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WellnessItemModelCopyWith<$Res> get wellnessItem {
    return $WellnessItemModelCopyWith<$Res>(_value.wellnessItem, (value) {
      return _then(_value.copyWith(wellnessItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WellnessGalleryItemImplCopyWith<$Res>
    implements $WellnessGalleryItemCopyWith<$Res> {
  factory _$$WellnessGalleryItemImplCopyWith(_$WellnessGalleryItemImpl value,
          $Res Function(_$WellnessGalleryItemImpl) then) =
      __$$WellnessGalleryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WellnessItemModel wellnessItem, List<GalleryItemModel> galleryItems});

  @override
  $WellnessItemModelCopyWith<$Res> get wellnessItem;
}

/// @nodoc
class __$$WellnessGalleryItemImplCopyWithImpl<$Res>
    extends _$WellnessGalleryItemCopyWithImpl<$Res, _$WellnessGalleryItemImpl>
    implements _$$WellnessGalleryItemImplCopyWith<$Res> {
  __$$WellnessGalleryItemImplCopyWithImpl(_$WellnessGalleryItemImpl _value,
      $Res Function(_$WellnessGalleryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of WellnessGalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wellnessItem = null,
    Object? galleryItems = null,
  }) {
    return _then(_$WellnessGalleryItemImpl(
      wellnessItem: null == wellnessItem
          ? _value.wellnessItem
          : wellnessItem // ignore: cast_nullable_to_non_nullable
              as WellnessItemModel,
      galleryItems: null == galleryItems
          ? _value._galleryItems
          : galleryItems // ignore: cast_nullable_to_non_nullable
              as List<GalleryItemModel>,
    ));
  }
}

/// @nodoc

class _$WellnessGalleryItemImpl implements _WellnessGalleryItem {
  const _$WellnessGalleryItemImpl(
      {required this.wellnessItem,
      final List<GalleryItemModel> galleryItems = const []})
      : _galleryItems = galleryItems;

  @override
  final WellnessItemModel wellnessItem;
  final List<GalleryItemModel> _galleryItems;
  @override
  @JsonKey()
  List<GalleryItemModel> get galleryItems {
    if (_galleryItems is EqualUnmodifiableListView) return _galleryItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_galleryItems);
  }

  @override
  String toString() {
    return 'WellnessGalleryItem(wellnessItem: $wellnessItem, galleryItems: $galleryItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WellnessGalleryItemImpl &&
            (identical(other.wellnessItem, wellnessItem) ||
                other.wellnessItem == wellnessItem) &&
            const DeepCollectionEquality()
                .equals(other._galleryItems, _galleryItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wellnessItem,
      const DeepCollectionEquality().hash(_galleryItems));

  /// Create a copy of WellnessGalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WellnessGalleryItemImplCopyWith<_$WellnessGalleryItemImpl> get copyWith =>
      __$$WellnessGalleryItemImplCopyWithImpl<_$WellnessGalleryItemImpl>(
          this, _$identity);
}

abstract class _WellnessGalleryItem implements WellnessGalleryItem {
  const factory _WellnessGalleryItem(
      {required final WellnessItemModel wellnessItem,
      final List<GalleryItemModel> galleryItems}) = _$WellnessGalleryItemImpl;

  @override
  WellnessItemModel get wellnessItem;
  @override
  List<GalleryItemModel> get galleryItems;

  /// Create a copy of WellnessGalleryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WellnessGalleryItemImplCopyWith<_$WellnessGalleryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
