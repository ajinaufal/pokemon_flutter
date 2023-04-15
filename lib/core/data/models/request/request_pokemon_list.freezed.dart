// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_pokemon_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestPokemonListModel _$RequestPokemonListModelFromJson(
    Map<String, dynamic> json) {
  return _RequestPokemonListModel.fromJson(json);
}

/// @nodoc
mixin _$RequestPokemonListModel {
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestPokemonListModelCopyWith<RequestPokemonListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPokemonListModelCopyWith<$Res> {
  factory $RequestPokemonListModelCopyWith(RequestPokemonListModel value,
          $Res Function(RequestPokemonListModel) then) =
      _$RequestPokemonListModelCopyWithImpl<$Res, RequestPokemonListModel>;
  @useResult
  $Res call({int? limit, int? offset, int? type});
}

/// @nodoc
class _$RequestPokemonListModelCopyWithImpl<$Res,
        $Val extends RequestPokemonListModel>
    implements $RequestPokemonListModelCopyWith<$Res> {
  _$RequestPokemonListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? offset = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestPokemonListModelCopyWith<$Res>
    implements $RequestPokemonListModelCopyWith<$Res> {
  factory _$$_RequestPokemonListModelCopyWith(_$_RequestPokemonListModel value,
          $Res Function(_$_RequestPokemonListModel) then) =
      __$$_RequestPokemonListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? limit, int? offset, int? type});
}

/// @nodoc
class __$$_RequestPokemonListModelCopyWithImpl<$Res>
    extends _$RequestPokemonListModelCopyWithImpl<$Res,
        _$_RequestPokemonListModel>
    implements _$$_RequestPokemonListModelCopyWith<$Res> {
  __$$_RequestPokemonListModelCopyWithImpl(_$_RequestPokemonListModel _value,
      $Res Function(_$_RequestPokemonListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? offset = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_RequestPokemonListModel(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestPokemonListModel implements _RequestPokemonListModel {
  const _$_RequestPokemonListModel({this.limit, this.offset, this.type});

  factory _$_RequestPokemonListModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestPokemonListModelFromJson(json);

  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final int? type;

  @override
  String toString() {
    return 'RequestPokemonListModel(limit: $limit, offset: $offset, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestPokemonListModel &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, limit, offset, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestPokemonListModelCopyWith<_$_RequestPokemonListModel>
      get copyWith =>
          __$$_RequestPokemonListModelCopyWithImpl<_$_RequestPokemonListModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestPokemonListModelToJson(
      this,
    );
  }
}

abstract class _RequestPokemonListModel implements RequestPokemonListModel {
  const factory _RequestPokemonListModel(
      {final int? limit,
      final int? offset,
      final int? type}) = _$_RequestPokemonListModel;

  factory _RequestPokemonListModel.fromJson(Map<String, dynamic> json) =
      _$_RequestPokemonListModel.fromJson;

  @override
  int? get limit;
  @override
  int? get offset;
  @override
  int? get type;
  @override
  @JsonKey(ignore: true)
  _$$_RequestPokemonListModelCopyWith<_$_RequestPokemonListModel>
      get copyWith => throw _privateConstructorUsedError;
}
