// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenModel _$TokenModelFromJson(Map<String, dynamic> json) {
  return _TokenModel.fromJson(json);
}

/// @nodoc
mixin _$TokenModel {
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;
  int get currentPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenModelCopyWith<TokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenModelCopyWith<$Res> {
  factory $TokenModelCopyWith(
          TokenModel value, $Res Function(TokenModel) then) =
      _$TokenModelCopyWithImpl<$Res, TokenModel>;
  @useResult
  $Res call(
      {String name,
      String symbol,
      int balance,
      String iconUrl,
      int currentPrice});
}

/// @nodoc
class _$TokenModelCopyWithImpl<$Res, $Val extends TokenModel>
    implements $TokenModelCopyWith<$Res> {
  _$TokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? symbol = null,
    Object? balance = null,
    Object? iconUrl = null,
    Object? currentPrice = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenModelCopyWith<$Res>
    implements $TokenModelCopyWith<$Res> {
  factory _$$_TokenModelCopyWith(
          _$_TokenModel value, $Res Function(_$_TokenModel) then) =
      __$$_TokenModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String symbol,
      int balance,
      String iconUrl,
      int currentPrice});
}

/// @nodoc
class __$$_TokenModelCopyWithImpl<$Res>
    extends _$TokenModelCopyWithImpl<$Res, _$_TokenModel>
    implements _$$_TokenModelCopyWith<$Res> {
  __$$_TokenModelCopyWithImpl(
      _$_TokenModel _value, $Res Function(_$_TokenModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? symbol = null,
    Object? balance = null,
    Object? iconUrl = null,
    Object? currentPrice = null,
  }) {
    return _then(_$_TokenModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenModel implements _TokenModel {
  const _$_TokenModel(
      {required this.name,
      required this.symbol,
      required this.balance,
      required this.iconUrl,
      required this.currentPrice});

  factory _$_TokenModel.fromJson(Map<String, dynamic> json) =>
      _$$_TokenModelFromJson(json);

  @override
  final String name;
  @override
  final String symbol;
  @override
  final int balance;
  @override
  final String iconUrl;
  @override
  final int currentPrice;

  @override
  String toString() {
    return 'TokenModel(name: $name, symbol: $symbol, balance: $balance, iconUrl: $iconUrl, currentPrice: $currentPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, symbol, balance, iconUrl, currentPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenModelCopyWith<_$_TokenModel> get copyWith =>
      __$$_TokenModelCopyWithImpl<_$_TokenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenModelToJson(
      this,
    );
  }
}

abstract class _TokenModel implements TokenModel {
  const factory _TokenModel(
      {required final String name,
      required final String symbol,
      required final int balance,
      required final String iconUrl,
      required final int currentPrice}) = _$_TokenModel;

  factory _TokenModel.fromJson(Map<String, dynamic> json) =
      _$_TokenModel.fromJson;

  @override
  String get name;
  @override
  String get symbol;
  @override
  int get balance;
  @override
  String get iconUrl;
  @override
  int get currentPrice;
  @override
  @JsonKey(ignore: true)
  _$$_TokenModelCopyWith<_$_TokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SortItemOptions _$SortItemOptionsFromJson(Map<String, dynamic> json) {
  return _SortItemOptions.fromJson(json);
}

/// @nodoc
mixin _$SortItemOptions {
  String get text => throw _privateConstructorUsedError;
  SortOrder get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortItemOptionsCopyWith<SortItemOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortItemOptionsCopyWith<$Res> {
  factory $SortItemOptionsCopyWith(
          SortItemOptions value, $Res Function(SortItemOptions) then) =
      _$SortItemOptionsCopyWithImpl<$Res, SortItemOptions>;
  @useResult
  $Res call({String text, SortOrder sort});
}

/// @nodoc
class _$SortItemOptionsCopyWithImpl<$Res, $Val extends SortItemOptions>
    implements $SortItemOptionsCopyWith<$Res> {
  _$SortItemOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SortItemOptionsCopyWith<$Res>
    implements $SortItemOptionsCopyWith<$Res> {
  factory _$$_SortItemOptionsCopyWith(
          _$_SortItemOptions value, $Res Function(_$_SortItemOptions) then) =
      __$$_SortItemOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, SortOrder sort});
}

/// @nodoc
class __$$_SortItemOptionsCopyWithImpl<$Res>
    extends _$SortItemOptionsCopyWithImpl<$Res, _$_SortItemOptions>
    implements _$$_SortItemOptionsCopyWith<$Res> {
  __$$_SortItemOptionsCopyWithImpl(
      _$_SortItemOptions _value, $Res Function(_$_SortItemOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? sort = null,
  }) {
    return _then(_$_SortItemOptions(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SortItemOptions implements _SortItemOptions {
  const _$_SortItemOptions(this.text, this.sort);

  factory _$_SortItemOptions.fromJson(Map<String, dynamic> json) =>
      _$$_SortItemOptionsFromJson(json);

  @override
  final String text;
  @override
  final SortOrder sort;

  @override
  String toString() {
    return 'SortItemOptions(text: $text, sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SortItemOptions &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SortItemOptionsCopyWith<_$_SortItemOptions> get copyWith =>
      __$$_SortItemOptionsCopyWithImpl<_$_SortItemOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SortItemOptionsToJson(
      this,
    );
  }
}

abstract class _SortItemOptions implements SortItemOptions {
  const factory _SortItemOptions(final String text, final SortOrder sort) =
      _$_SortItemOptions;

  factory _SortItemOptions.fromJson(Map<String, dynamic> json) =
      _$_SortItemOptions.fromJson;

  @override
  String get text;
  @override
  SortOrder get sort;
  @override
  @JsonKey(ignore: true)
  _$$_SortItemOptionsCopyWith<_$_SortItemOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
