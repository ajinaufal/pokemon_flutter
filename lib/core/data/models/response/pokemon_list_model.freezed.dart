// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonListModel _$PokemonListModelFromJson(Map<String, dynamic> json) {
  return _PokemonListModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonListModel {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<ResultModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListModelCopyWith<PokemonListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListModelCopyWith<$Res> {
  factory $PokemonListModelCopyWith(
          PokemonListModel value, $Res Function(PokemonListModel) then) =
      _$PokemonListModelCopyWithImpl<$Res, PokemonListModel>;
  @useResult
  $Res call(
      {int count, String? next, String? previous, List<ResultModel> results});
}

/// @nodoc
class _$PokemonListModelCopyWithImpl<$Res, $Val extends PokemonListModel>
    implements $PokemonListModelCopyWith<$Res> {
  _$PokemonListModelCopyWithImpl(this._value, this._then);

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
              as List<ResultModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonListModelCopyWith<$Res>
    implements $PokemonListModelCopyWith<$Res> {
  factory _$$_PokemonListModelCopyWith(
          _$_PokemonListModel value, $Res Function(_$_PokemonListModel) then) =
      __$$_PokemonListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count, String? next, String? previous, List<ResultModel> results});
}

/// @nodoc
class __$$_PokemonListModelCopyWithImpl<$Res>
    extends _$PokemonListModelCopyWithImpl<$Res, _$_PokemonListModel>
    implements _$$_PokemonListModelCopyWith<$Res> {
  __$$_PokemonListModelCopyWithImpl(
      _$_PokemonListModel _value, $Res Function(_$_PokemonListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$_PokemonListModel(
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
              as List<ResultModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonListModel implements _PokemonListModel {
  const _$_PokemonListModel(
      {required this.count,
      this.next,
      this.previous,
      required final List<ResultModel> results})
      : _results = results;

  factory _$_PokemonListModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonListModelFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<ResultModel> _results;
  @override
  List<ResultModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokemonListModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonListModel &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonListModelCopyWith<_$_PokemonListModel> get copyWith =>
      __$$_PokemonListModelCopyWithImpl<_$_PokemonListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonListModelToJson(
      this,
    );
  }
}

abstract class _PokemonListModel implements PokemonListModel {
  const factory _PokemonListModel(
      {required final int count,
      final String? next,
      final String? previous,
      required final List<ResultModel> results}) = _$_PokemonListModel;

  factory _PokemonListModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonListModel.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<ResultModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonListModelCopyWith<_$_PokemonListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

/// @nodoc
mixin _$ResultModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res, ResultModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res, $Val extends ResultModel>
    implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_ResultModelCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$$_ResultModelCopyWith(
          _$_ResultModel value, $Res Function(_$_ResultModel) then) =
      __$$_ResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_ResultModelCopyWithImpl<$Res>
    extends _$ResultModelCopyWithImpl<$Res, _$_ResultModel>
    implements _$$_ResultModelCopyWith<$Res> {
  __$$_ResultModelCopyWithImpl(
      _$_ResultModel _value, $Res Function(_$_ResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_ResultModel(
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
@JsonSerializable()
class _$_ResultModel implements _ResultModel {
  const _$_ResultModel({required this.name, required this.url});

  factory _$_ResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResultModelFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ResultModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultModelCopyWith<_$_ResultModel> get copyWith =>
      __$$_ResultModelCopyWithImpl<_$_ResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultModelToJson(
      this,
    );
  }
}

abstract class _ResultModel implements ResultModel {
  const factory _ResultModel(
      {required final String name, required final String url}) = _$_ResultModel;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$_ResultModel.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ResultModelCopyWith<_$_ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
