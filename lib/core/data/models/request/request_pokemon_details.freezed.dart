// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_pokemon_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestPokemonDetailsModel {
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestPokemonDetailsModelCopyWith<RequestPokemonDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPokemonDetailsModelCopyWith<$Res> {
  factory $RequestPokemonDetailsModelCopyWith(RequestPokemonDetailsModel value,
          $Res Function(RequestPokemonDetailsModel) then) =
      _$RequestPokemonDetailsModelCopyWithImpl<$Res,
          RequestPokemonDetailsModel>;
  @useResult
  $Res call({String? name, int? id});
}

/// @nodoc
class _$RequestPokemonDetailsModelCopyWithImpl<$Res,
        $Val extends RequestPokemonDetailsModel>
    implements $RequestPokemonDetailsModelCopyWith<$Res> {
  _$RequestPokemonDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestPokemonDetailsModelCopyWith<$Res>
    implements $RequestPokemonDetailsModelCopyWith<$Res> {
  factory _$$_RequestPokemonDetailsModelCopyWith(
          _$_RequestPokemonDetailsModel value,
          $Res Function(_$_RequestPokemonDetailsModel) then) =
      __$$_RequestPokemonDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? id});
}

/// @nodoc
class __$$_RequestPokemonDetailsModelCopyWithImpl<$Res>
    extends _$RequestPokemonDetailsModelCopyWithImpl<$Res,
        _$_RequestPokemonDetailsModel>
    implements _$$_RequestPokemonDetailsModelCopyWith<$Res> {
  __$$_RequestPokemonDetailsModelCopyWithImpl(
      _$_RequestPokemonDetailsModel _value,
      $Res Function(_$_RequestPokemonDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_RequestPokemonDetailsModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RequestPokemonDetailsModel implements _RequestPokemonDetailsModel {
  const _$_RequestPokemonDetailsModel({this.name, this.id});

  @override
  final String? name;
  @override
  final int? id;

  @override
  String toString() {
    return 'RequestPokemonDetailsModel(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestPokemonDetailsModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestPokemonDetailsModelCopyWith<_$_RequestPokemonDetailsModel>
      get copyWith => __$$_RequestPokemonDetailsModelCopyWithImpl<
          _$_RequestPokemonDetailsModel>(this, _$identity);
}

abstract class _RequestPokemonDetailsModel
    implements RequestPokemonDetailsModel {
  const factory _RequestPokemonDetailsModel(
      {final String? name, final int? id}) = _$_RequestPokemonDetailsModel;

  @override
  String? get name;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_RequestPokemonDetailsModelCopyWith<_$_RequestPokemonDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}
