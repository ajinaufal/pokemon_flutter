// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonListEntities {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<ResultEntities> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonListEntitiesCopyWith<PokemonListEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListEntitiesCopyWith<$Res> {
  factory $PokemonListEntitiesCopyWith(
          PokemonListEntities value, $Res Function(PokemonListEntities) then) =
      _$PokemonListEntitiesCopyWithImpl<$Res, PokemonListEntities>;
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      List<ResultEntities> results});
}

/// @nodoc
class _$PokemonListEntitiesCopyWithImpl<$Res, $Val extends PokemonListEntities>
    implements $PokemonListEntitiesCopyWith<$Res> {
  _$PokemonListEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultEntities>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonListEntitiesCopyWith<$Res>
    implements $PokemonListEntitiesCopyWith<$Res> {
  factory _$$_PokemonListEntitiesCopyWith(_$_PokemonListEntities value,
          $Res Function(_$_PokemonListEntities) then) =
      __$$_PokemonListEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      List<ResultEntities> results});
}

/// @nodoc
class __$$_PokemonListEntitiesCopyWithImpl<$Res>
    extends _$PokemonListEntitiesCopyWithImpl<$Res, _$_PokemonListEntities>
    implements _$$_PokemonListEntitiesCopyWith<$Res> {
  __$$_PokemonListEntitiesCopyWithImpl(_$_PokemonListEntities _value,
      $Res Function(_$_PokemonListEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$_PokemonListEntities(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultEntities>,
    ));
  }
}

/// @nodoc

class _$_PokemonListEntities implements _PokemonListEntities {
  const _$_PokemonListEntities(
      {required this.count,
      this.next,
      this.previous,
      required final List<ResultEntities> results})
      : _results = results;

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<ResultEntities> _results;
  @override
  List<ResultEntities> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokemonListEntities(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonListEntities &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonListEntitiesCopyWith<_$_PokemonListEntities> get copyWith =>
      __$$_PokemonListEntitiesCopyWithImpl<_$_PokemonListEntities>(
          this, _$identity);
}

abstract class _PokemonListEntities implements PokemonListEntities {
  const factory _PokemonListEntities(
      {required final int count,
      final String? next,
      final String? previous,
      required final List<ResultEntities> results}) = _$_PokemonListEntities;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<ResultEntities> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonListEntitiesCopyWith<_$_PokemonListEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResultEntities {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultEntitiesCopyWith<ResultEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultEntitiesCopyWith<$Res> {
  factory $ResultEntitiesCopyWith(
          ResultEntities value, $Res Function(ResultEntities) then) =
      _$ResultEntitiesCopyWithImpl<$Res, ResultEntities>;
  @useResult
  $Res call({int? id, String name, String url});
}

/// @nodoc
class _$ResultEntitiesCopyWithImpl<$Res, $Val extends ResultEntities>
    implements $ResultEntitiesCopyWith<$Res> {
  _$ResultEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultEntitiesCopyWith<$Res>
    implements $ResultEntitiesCopyWith<$Res> {
  factory _$$_ResultEntitiesCopyWith(
          _$_ResultEntities value, $Res Function(_$_ResultEntities) then) =
      __$$_ResultEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, String url});
}

/// @nodoc
class __$$_ResultEntitiesCopyWithImpl<$Res>
    extends _$ResultEntitiesCopyWithImpl<$Res, _$_ResultEntities>
    implements _$$_ResultEntitiesCopyWith<$Res> {
  __$$_ResultEntitiesCopyWithImpl(
      _$_ResultEntities _value, $Res Function(_$_ResultEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_ResultEntities(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResultEntities implements _ResultEntities {
  const _$_ResultEntities({this.id, required this.name, required this.url});

  @override
  final int? id;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ResultEntities(id: $id, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultEntitiesCopyWith<_$_ResultEntities> get copyWith =>
      __$$_ResultEntitiesCopyWithImpl<_$_ResultEntities>(this, _$identity);
}

abstract class _ResultEntities implements ResultEntities {
  const factory _ResultEntities(
      {final int? id,
      required final String name,
      required final String url}) = _$_ResultEntities;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ResultEntitiesCopyWith<_$_ResultEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
