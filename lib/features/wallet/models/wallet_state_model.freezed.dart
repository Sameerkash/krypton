// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletStateModel _$WalletStateModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return WalletStateModelLoading.fromJson(json);
    case 'data':
      return WalletStateModelData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WalletStateModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WalletStateModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<String> carouselCards,
            List<TokenModel> tokens,
            List<SortItemOptions> sortItemOptions,
            SortOrder sortBy)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<String> carouselCards, List<TokenModel> tokens,
            List<SortItemOptions> sortItemOptions, SortOrder sortBy)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> carouselCards, List<TokenModel> tokens,
            List<SortItemOptions> sortItemOptions, SortOrder sortBy)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletStateModelLoading value) loading,
    required TResult Function(WalletStateModelData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletStateModelLoading value)? loading,
    TResult? Function(WalletStateModelData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletStateModelLoading value)? loading,
    TResult Function(WalletStateModelData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateModelCopyWith<$Res> {
  factory $WalletStateModelCopyWith(
          WalletStateModel value, $Res Function(WalletStateModel) then) =
      _$WalletStateModelCopyWithImpl<$Res, WalletStateModel>;
}

/// @nodoc
class _$WalletStateModelCopyWithImpl<$Res, $Val extends WalletStateModel>
    implements $WalletStateModelCopyWith<$Res> {
  _$WalletStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WalletStateModelLoadingCopyWith<$Res> {
  factory _$$WalletStateModelLoadingCopyWith(_$WalletStateModelLoading value,
          $Res Function(_$WalletStateModelLoading) then) =
      __$$WalletStateModelLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletStateModelLoadingCopyWithImpl<$Res>
    extends _$WalletStateModelCopyWithImpl<$Res, _$WalletStateModelLoading>
    implements _$$WalletStateModelLoadingCopyWith<$Res> {
  __$$WalletStateModelLoadingCopyWithImpl(_$WalletStateModelLoading _value,
      $Res Function(_$WalletStateModelLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$WalletStateModelLoading implements WalletStateModelLoading {
  const _$WalletStateModelLoading({final String? $type})
      : $type = $type ?? 'loading';

  factory _$WalletStateModelLoading.fromJson(Map<String, dynamic> json) =>
      _$$WalletStateModelLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WalletStateModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletStateModelLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<String> carouselCards,
            List<TokenModel> tokens,
            List<SortItemOptions> sortItemOptions,
            SortOrder sortBy)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<String> carouselCards, List<TokenModel> tokens,
            List<SortItemOptions> sortItemOptions, SortOrder sortBy)?
        data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> carouselCards, List<TokenModel> tokens,
            List<SortItemOptions> sortItemOptions, SortOrder sortBy)?
        data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletStateModelLoading value) loading,
    required TResult Function(WalletStateModelData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletStateModelLoading value)? loading,
    TResult? Function(WalletStateModelData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletStateModelLoading value)? loading,
    TResult Function(WalletStateModelData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletStateModelLoadingToJson(
      this,
    );
  }
}

abstract class WalletStateModelLoading implements WalletStateModel {
  const factory WalletStateModelLoading() = _$WalletStateModelLoading;

  factory WalletStateModelLoading.fromJson(Map<String, dynamic> json) =
      _$WalletStateModelLoading.fromJson;
}

/// @nodoc
abstract class _$$WalletStateModelDataCopyWith<$Res> {
  factory _$$WalletStateModelDataCopyWith(_$WalletStateModelData value,
          $Res Function(_$WalletStateModelData) then) =
      __$$WalletStateModelDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<String> carouselCards,
      List<TokenModel> tokens,
      List<SortItemOptions> sortItemOptions,
      SortOrder sortBy});
}

/// @nodoc
class __$$WalletStateModelDataCopyWithImpl<$Res>
    extends _$WalletStateModelCopyWithImpl<$Res, _$WalletStateModelData>
    implements _$$WalletStateModelDataCopyWith<$Res> {
  __$$WalletStateModelDataCopyWithImpl(_$WalletStateModelData _value,
      $Res Function(_$WalletStateModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carouselCards = null,
    Object? tokens = null,
    Object? sortItemOptions = null,
    Object? sortBy = null,
  }) {
    return _then(_$WalletStateModelData(
      carouselCards: null == carouselCards
          ? _value._carouselCards
          : carouselCards // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tokens: null == tokens
          ? _value._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<TokenModel>,
      sortItemOptions: null == sortItemOptions
          ? _value._sortItemOptions
          : sortItemOptions // ignore: cast_nullable_to_non_nullable
              as List<SortItemOptions>,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletStateModelData implements WalletStateModelData {
  const _$WalletStateModelData(
      {final List<String> carouselCards = const [],
      final List<TokenModel> tokens = const [],
      final List<SortItemOptions> sortItemOptions = const [],
      this.sortBy = SortOrder.desc,
      final String? $type})
      : _carouselCards = carouselCards,
        _tokens = tokens,
        _sortItemOptions = sortItemOptions,
        $type = $type ?? 'data';

  factory _$WalletStateModelData.fromJson(Map<String, dynamic> json) =>
      _$$WalletStateModelDataFromJson(json);

  final List<String> _carouselCards;
  @override
  @JsonKey()
  List<String> get carouselCards {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carouselCards);
  }

  final List<TokenModel> _tokens;
  @override
  @JsonKey()
  List<TokenModel> get tokens {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokens);
  }

  final List<SortItemOptions> _sortItemOptions;
  @override
  @JsonKey()
  List<SortItemOptions> get sortItemOptions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortItemOptions);
  }

  @override
  @JsonKey()
  final SortOrder sortBy;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WalletStateModel.data(carouselCards: $carouselCards, tokens: $tokens, sortItemOptions: $sortItemOptions, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletStateModelData &&
            const DeepCollectionEquality()
                .equals(other._carouselCards, _carouselCards) &&
            const DeepCollectionEquality().equals(other._tokens, _tokens) &&
            const DeepCollectionEquality()
                .equals(other._sortItemOptions, _sortItemOptions) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_carouselCards),
      const DeepCollectionEquality().hash(_tokens),
      const DeepCollectionEquality().hash(_sortItemOptions),
      sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletStateModelDataCopyWith<_$WalletStateModelData> get copyWith =>
      __$$WalletStateModelDataCopyWithImpl<_$WalletStateModelData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<String> carouselCards,
            List<TokenModel> tokens,
            List<SortItemOptions> sortItemOptions,
            SortOrder sortBy)
        data,
  }) {
    return data(carouselCards, tokens, sortItemOptions, sortBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<String> carouselCards, List<TokenModel> tokens,
            List<SortItemOptions> sortItemOptions, SortOrder sortBy)?
        data,
  }) {
    return data?.call(carouselCards, tokens, sortItemOptions, sortBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> carouselCards, List<TokenModel> tokens,
            List<SortItemOptions> sortItemOptions, SortOrder sortBy)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(carouselCards, tokens, sortItemOptions, sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletStateModelLoading value) loading,
    required TResult Function(WalletStateModelData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletStateModelLoading value)? loading,
    TResult? Function(WalletStateModelData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletStateModelLoading value)? loading,
    TResult Function(WalletStateModelData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletStateModelDataToJson(
      this,
    );
  }
}

abstract class WalletStateModelData implements WalletStateModel {
  const factory WalletStateModelData(
      {final List<String> carouselCards,
      final List<TokenModel> tokens,
      final List<SortItemOptions> sortItemOptions,
      final SortOrder sortBy}) = _$WalletStateModelData;

  factory WalletStateModelData.fromJson(Map<String, dynamic> json) =
      _$WalletStateModelData.fromJson;

  List<String> get carouselCards;
  List<TokenModel> get tokens;
  List<SortItemOptions> get sortItemOptions;
  SortOrder get sortBy;
  @JsonKey(ignore: true)
  _$$WalletStateModelDataCopyWith<_$WalletStateModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
