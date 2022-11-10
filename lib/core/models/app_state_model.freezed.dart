// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppStateModel _$AppStateModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return AppStateModelLoading.fromJson(json);
    case 'error':
      return AppStateModelError.fromJson(json);
    case 'data':
      return AppStateModelData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppStateModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppStateModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateModelLoading value) loading,
    required TResult Function(AppStateModelError value) error,
    required TResult Function(AppStateModelData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateModelLoading value)? loading,
    TResult? Function(AppStateModelError value)? error,
    TResult? Function(AppStateModelData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateModelLoading value)? loading,
    TResult Function(AppStateModelError value)? error,
    TResult Function(AppStateModelData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateModelCopyWith<$Res> {
  factory $AppStateModelCopyWith(
          AppStateModel value, $Res Function(AppStateModel) then) =
      _$AppStateModelCopyWithImpl<$Res, AppStateModel>;
}

/// @nodoc
class _$AppStateModelCopyWithImpl<$Res, $Val extends AppStateModel>
    implements $AppStateModelCopyWith<$Res> {
  _$AppStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppStateModelLoadingCopyWith<$Res> {
  factory _$$AppStateModelLoadingCopyWith(_$AppStateModelLoading value,
          $Res Function(_$AppStateModelLoading) then) =
      __$$AppStateModelLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateModelLoadingCopyWithImpl<$Res>
    extends _$AppStateModelCopyWithImpl<$Res, _$AppStateModelLoading>
    implements _$$AppStateModelLoadingCopyWith<$Res> {
  __$$AppStateModelLoadingCopyWithImpl(_$AppStateModelLoading _value,
      $Res Function(_$AppStateModelLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AppStateModelLoading implements AppStateModelLoading {
  const _$AppStateModelLoading({final String? $type})
      : $type = $type ?? 'loading';

  factory _$AppStateModelLoading.fromJson(Map<String, dynamic> json) =>
      _$$AppStateModelLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppStateModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateModelLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)?
        data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)?
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
    required TResult Function(AppStateModelLoading value) loading,
    required TResult Function(AppStateModelError value) error,
    required TResult Function(AppStateModelData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateModelLoading value)? loading,
    TResult? Function(AppStateModelError value)? error,
    TResult? Function(AppStateModelData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateModelLoading value)? loading,
    TResult Function(AppStateModelError value)? error,
    TResult Function(AppStateModelData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateModelLoadingToJson(
      this,
    );
  }
}

abstract class AppStateModelLoading implements AppStateModel {
  const factory AppStateModelLoading() = _$AppStateModelLoading;

  factory AppStateModelLoading.fromJson(Map<String, dynamic> json) =
      _$AppStateModelLoading.fromJson;
}

/// @nodoc
abstract class _$$AppStateModelErrorCopyWith<$Res> {
  factory _$$AppStateModelErrorCopyWith(_$AppStateModelError value,
          $Res Function(_$AppStateModelError) then) =
      __$$AppStateModelErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateModelErrorCopyWithImpl<$Res>
    extends _$AppStateModelCopyWithImpl<$Res, _$AppStateModelError>
    implements _$$AppStateModelErrorCopyWith<$Res> {
  __$$AppStateModelErrorCopyWithImpl(
      _$AppStateModelError _value, $Res Function(_$AppStateModelError) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AppStateModelError implements AppStateModelError {
  const _$AppStateModelError({final String? $type}) : $type = $type ?? 'error';

  factory _$AppStateModelError.fromJson(Map<String, dynamic> json) =>
      _$$AppStateModelErrorFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppStateModel.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateModelError);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)
        data,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)?
        data,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)?
        data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateModelLoading value) loading,
    required TResult Function(AppStateModelError value) error,
    required TResult Function(AppStateModelData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateModelLoading value)? loading,
    TResult? Function(AppStateModelError value)? error,
    TResult? Function(AppStateModelData value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateModelLoading value)? loading,
    TResult Function(AppStateModelError value)? error,
    TResult Function(AppStateModelData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateModelErrorToJson(
      this,
    );
  }
}

abstract class AppStateModelError implements AppStateModel {
  const factory AppStateModelError() = _$AppStateModelError;

  factory AppStateModelError.fromJson(Map<String, dynamic> json) =
      _$AppStateModelError.fromJson;
}

/// @nodoc
abstract class _$$AppStateModelDataCopyWith<$Res> {
  factory _$$AppStateModelDataCopyWith(
          _$AppStateModelData value, $Res Function(_$AppStateModelData) then) =
      __$$AppStateModelDataCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, List<BottomTabItemModel> bottomTabs, int index});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$AppStateModelDataCopyWithImpl<$Res>
    extends _$AppStateModelCopyWithImpl<$Res, _$AppStateModelData>
    implements _$$AppStateModelDataCopyWith<$Res> {
  __$$AppStateModelDataCopyWithImpl(
      _$AppStateModelData _value, $Res Function(_$AppStateModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? bottomTabs = null,
    Object? index = null,
  }) {
    return _then(_$AppStateModelData(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      bottomTabs: null == bottomTabs
          ? _value._bottomTabs
          : bottomTabs // ignore: cast_nullable_to_non_nullable
              as List<BottomTabItemModel>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateModelData implements AppStateModelData {
  const _$AppStateModelData(
      {required this.user,
      required final List<BottomTabItemModel> bottomTabs,
      this.index = 0,
      final String? $type})
      : _bottomTabs = bottomTabs,
        $type = $type ?? 'data';

  factory _$AppStateModelData.fromJson(Map<String, dynamic> json) =>
      _$$AppStateModelDataFromJson(json);

  @override
  final UserModel user;
  final List<BottomTabItemModel> _bottomTabs;
  @override
  List<BottomTabItemModel> get bottomTabs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bottomTabs);
  }

  @override
  @JsonKey()
  final int index;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppStateModel.data(user: $user, bottomTabs: $bottomTabs, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateModelData &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._bottomTabs, _bottomTabs) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user,
      const DeepCollectionEquality().hash(_bottomTabs), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateModelDataCopyWith<_$AppStateModelData> get copyWith =>
      __$$AppStateModelDataCopyWithImpl<_$AppStateModelData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)
        data,
  }) {
    return data(user, bottomTabs, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)?
        data,
  }) {
    return data?.call(user, bottomTabs, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            UserModel user, List<BottomTabItemModel> bottomTabs, int index)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(user, bottomTabs, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateModelLoading value) loading,
    required TResult Function(AppStateModelError value) error,
    required TResult Function(AppStateModelData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateModelLoading value)? loading,
    TResult? Function(AppStateModelError value)? error,
    TResult? Function(AppStateModelData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateModelLoading value)? loading,
    TResult Function(AppStateModelError value)? error,
    TResult Function(AppStateModelData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateModelDataToJson(
      this,
    );
  }
}

abstract class AppStateModelData implements AppStateModel {
  const factory AppStateModelData(
      {required final UserModel user,
      required final List<BottomTabItemModel> bottomTabs,
      final int index}) = _$AppStateModelData;

  factory AppStateModelData.fromJson(Map<String, dynamic> json) =
      _$AppStateModelData.fromJson;

  UserModel get user;
  List<BottomTabItemModel> get bottomTabs;
  int get index;
  @JsonKey(ignore: true)
  _$$AppStateModelDataCopyWith<_$AppStateModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
