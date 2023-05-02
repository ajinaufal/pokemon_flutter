// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonSpeciesModel _$PokemonSpeciesModelFromJson(Map<String, dynamic> json) {
  return _PokemonSpeciesModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesModel {
  int? get baseHappiness => throw _privateConstructorUsedError;
  int? get captureRate => throw _privateConstructorUsedError;
  List<PokemonSpeciesInfoModel>? get eggGroups =>
      throw _privateConstructorUsedError;
  List<PokemonSpeciesFlavorTextEntryModel>? get flavorTextEntries =>
      throw _privateConstructorUsedError;
  PokemonSpeciesInfoModel? get generation => throw _privateConstructorUsedError;
  PokemonSpeciesInfoModel? get growthRate => throw _privateConstructorUsedError;
  PokemonSpeciesInfoModel? get habitat => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  PokemonSpeciesInfoModel? get shape => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesModelCopyWith<PokemonSpeciesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesModelCopyWith<$Res> {
  factory $PokemonSpeciesModelCopyWith(
          PokemonSpeciesModel value, $Res Function(PokemonSpeciesModel) then) =
      _$PokemonSpeciesModelCopyWithImpl<$Res, PokemonSpeciesModel>;
  @useResult
  $Res call(
      {int? baseHappiness,
      int? captureRate,
      List<PokemonSpeciesInfoModel>? eggGroups,
      List<PokemonSpeciesFlavorTextEntryModel>? flavorTextEntries,
      PokemonSpeciesInfoModel? generation,
      PokemonSpeciesInfoModel? growthRate,
      PokemonSpeciesInfoModel? habitat,
      String? name,
      int? order,
      PokemonSpeciesInfoModel? shape});

  $PokemonSpeciesInfoModelCopyWith<$Res>? get generation;
  $PokemonSpeciesInfoModelCopyWith<$Res>? get growthRate;
  $PokemonSpeciesInfoModelCopyWith<$Res>? get habitat;
  $PokemonSpeciesInfoModelCopyWith<$Res>? get shape;
}

/// @nodoc
class _$PokemonSpeciesModelCopyWithImpl<$Res, $Val extends PokemonSpeciesModel>
    implements $PokemonSpeciesModelCopyWith<$Res> {
  _$PokemonSpeciesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseHappiness = freezed,
    Object? captureRate = freezed,
    Object? eggGroups = freezed,
    Object? flavorTextEntries = freezed,
    Object? generation = freezed,
    Object? growthRate = freezed,
    Object? habitat = freezed,
    Object? name = freezed,
    Object? order = freezed,
    Object? shape = freezed,
  }) {
    return _then(_value.copyWith(
      baseHappiness: freezed == baseHappiness
          ? _value.baseHappiness
          : baseHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      captureRate: freezed == captureRate
          ? _value.captureRate
          : captureRate // ignore: cast_nullable_to_non_nullable
              as int?,
      eggGroups: freezed == eggGroups
          ? _value.eggGroups
          : eggGroups // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpeciesInfoModel>?,
      flavorTextEntries: freezed == flavorTextEntries
          ? _value.flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpeciesFlavorTextEntryModel>?,
      generation: freezed == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
      growthRate: freezed == growthRate
          ? _value.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
      habitat: freezed == habitat
          ? _value.habitat
          : habitat // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpeciesInfoModelCopyWith<$Res>? get generation {
    if (_value.generation == null) {
      return null;
    }

    return $PokemonSpeciesInfoModelCopyWith<$Res>(_value.generation!, (value) {
      return _then(_value.copyWith(generation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpeciesInfoModelCopyWith<$Res>? get growthRate {
    if (_value.growthRate == null) {
      return null;
    }

    return $PokemonSpeciesInfoModelCopyWith<$Res>(_value.growthRate!, (value) {
      return _then(_value.copyWith(growthRate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpeciesInfoModelCopyWith<$Res>? get habitat {
    if (_value.habitat == null) {
      return null;
    }

    return $PokemonSpeciesInfoModelCopyWith<$Res>(_value.habitat!, (value) {
      return _then(_value.copyWith(habitat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpeciesInfoModelCopyWith<$Res>? get shape {
    if (_value.shape == null) {
      return null;
    }

    return $PokemonSpeciesInfoModelCopyWith<$Res>(_value.shape!, (value) {
      return _then(_value.copyWith(shape: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonSpeciesModelCopyWith<$Res>
    implements $PokemonSpeciesModelCopyWith<$Res> {
  factory _$$_PokemonSpeciesModelCopyWith(_$_PokemonSpeciesModel value,
          $Res Function(_$_PokemonSpeciesModel) then) =
      __$$_PokemonSpeciesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? baseHappiness,
      int? captureRate,
      List<PokemonSpeciesInfoModel>? eggGroups,
      List<PokemonSpeciesFlavorTextEntryModel>? flavorTextEntries,
      PokemonSpeciesInfoModel? generation,
      PokemonSpeciesInfoModel? growthRate,
      PokemonSpeciesInfoModel? habitat,
      String? name,
      int? order,
      PokemonSpeciesInfoModel? shape});

  @override
  $PokemonSpeciesInfoModelCopyWith<$Res>? get generation;
  @override
  $PokemonSpeciesInfoModelCopyWith<$Res>? get growthRate;
  @override
  $PokemonSpeciesInfoModelCopyWith<$Res>? get habitat;
  @override
  $PokemonSpeciesInfoModelCopyWith<$Res>? get shape;
}

/// @nodoc
class __$$_PokemonSpeciesModelCopyWithImpl<$Res>
    extends _$PokemonSpeciesModelCopyWithImpl<$Res, _$_PokemonSpeciesModel>
    implements _$$_PokemonSpeciesModelCopyWith<$Res> {
  __$$_PokemonSpeciesModelCopyWithImpl(_$_PokemonSpeciesModel _value,
      $Res Function(_$_PokemonSpeciesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseHappiness = freezed,
    Object? captureRate = freezed,
    Object? eggGroups = freezed,
    Object? flavorTextEntries = freezed,
    Object? generation = freezed,
    Object? growthRate = freezed,
    Object? habitat = freezed,
    Object? name = freezed,
    Object? order = freezed,
    Object? shape = freezed,
  }) {
    return _then(_$_PokemonSpeciesModel(
      baseHappiness: freezed == baseHappiness
          ? _value.baseHappiness
          : baseHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      captureRate: freezed == captureRate
          ? _value.captureRate
          : captureRate // ignore: cast_nullable_to_non_nullable
              as int?,
      eggGroups: freezed == eggGroups
          ? _value._eggGroups
          : eggGroups // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpeciesInfoModel>?,
      flavorTextEntries: freezed == flavorTextEntries
          ? _value._flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpeciesFlavorTextEntryModel>?,
      generation: freezed == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
      growthRate: freezed == growthRate
          ? _value.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
      habitat: freezed == habitat
          ? _value.habitat
          : habitat // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSpeciesModel implements _PokemonSpeciesModel {
  const _$_PokemonSpeciesModel(
      {this.baseHappiness,
      this.captureRate,
      final List<PokemonSpeciesInfoModel>? eggGroups,
      final List<PokemonSpeciesFlavorTextEntryModel>? flavorTextEntries,
      this.generation,
      this.growthRate,
      this.habitat,
      this.name,
      this.order,
      this.shape})
      : _eggGroups = eggGroups,
        _flavorTextEntries = flavorTextEntries;

  factory _$_PokemonSpeciesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonSpeciesModelFromJson(json);

  @override
  final int? baseHappiness;
  @override
  final int? captureRate;
  final List<PokemonSpeciesInfoModel>? _eggGroups;
  @override
  List<PokemonSpeciesInfoModel>? get eggGroups {
    final value = _eggGroups;
    if (value == null) return null;
    if (_eggGroups is EqualUnmodifiableListView) return _eggGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PokemonSpeciesFlavorTextEntryModel>? _flavorTextEntries;
  @override
  List<PokemonSpeciesFlavorTextEntryModel>? get flavorTextEntries {
    final value = _flavorTextEntries;
    if (value == null) return null;
    if (_flavorTextEntries is EqualUnmodifiableListView)
      return _flavorTextEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PokemonSpeciesInfoModel? generation;
  @override
  final PokemonSpeciesInfoModel? growthRate;
  @override
  final PokemonSpeciesInfoModel? habitat;
  @override
  final String? name;
  @override
  final int? order;
  @override
  final PokemonSpeciesInfoModel? shape;

  @override
  String toString() {
    return 'PokemonSpeciesModel(baseHappiness: $baseHappiness, captureRate: $captureRate, eggGroups: $eggGroups, flavorTextEntries: $flavorTextEntries, generation: $generation, growthRate: $growthRate, habitat: $habitat, name: $name, order: $order, shape: $shape)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonSpeciesModel &&
            (identical(other.baseHappiness, baseHappiness) ||
                other.baseHappiness == baseHappiness) &&
            (identical(other.captureRate, captureRate) ||
                other.captureRate == captureRate) &&
            const DeepCollectionEquality()
                .equals(other._eggGroups, _eggGroups) &&
            const DeepCollectionEquality()
                .equals(other._flavorTextEntries, _flavorTextEntries) &&
            (identical(other.generation, generation) ||
                other.generation == generation) &&
            (identical(other.growthRate, growthRate) ||
                other.growthRate == growthRate) &&
            (identical(other.habitat, habitat) || other.habitat == habitat) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.shape, shape) || other.shape == shape));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      baseHappiness,
      captureRate,
      const DeepCollectionEquality().hash(_eggGroups),
      const DeepCollectionEquality().hash(_flavorTextEntries),
      generation,
      growthRate,
      habitat,
      name,
      order,
      shape);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonSpeciesModelCopyWith<_$_PokemonSpeciesModel> get copyWith =>
      __$$_PokemonSpeciesModelCopyWithImpl<_$_PokemonSpeciesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSpeciesModelToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesModel implements PokemonSpeciesModel {
  const factory _PokemonSpeciesModel(
      {final int? baseHappiness,
      final int? captureRate,
      final List<PokemonSpeciesInfoModel>? eggGroups,
      final List<PokemonSpeciesFlavorTextEntryModel>? flavorTextEntries,
      final PokemonSpeciesInfoModel? generation,
      final PokemonSpeciesInfoModel? growthRate,
      final PokemonSpeciesInfoModel? habitat,
      final String? name,
      final int? order,
      final PokemonSpeciesInfoModel? shape}) = _$_PokemonSpeciesModel;

  factory _PokemonSpeciesModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonSpeciesModel.fromJson;

  @override
  int? get baseHappiness;
  @override
  int? get captureRate;
  @override
  List<PokemonSpeciesInfoModel>? get eggGroups;
  @override
  List<PokemonSpeciesFlavorTextEntryModel>? get flavorTextEntries;
  @override
  PokemonSpeciesInfoModel? get generation;
  @override
  PokemonSpeciesInfoModel? get growthRate;
  @override
  PokemonSpeciesInfoModel? get habitat;
  @override
  String? get name;
  @override
  int? get order;
  @override
  PokemonSpeciesInfoModel? get shape;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonSpeciesModelCopyWith<_$_PokemonSpeciesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpeciesInfoModel _$PokemonSpeciesInfoModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonSpeciesInfoModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesInfoModel {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesInfoModelCopyWith<PokemonSpeciesInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesInfoModelCopyWith<$Res> {
  factory $PokemonSpeciesInfoModelCopyWith(PokemonSpeciesInfoModel value,
          $Res Function(PokemonSpeciesInfoModel) then) =
      _$PokemonSpeciesInfoModelCopyWithImpl<$Res, PokemonSpeciesInfoModel>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$PokemonSpeciesInfoModelCopyWithImpl<$Res,
        $Val extends PokemonSpeciesInfoModel>
    implements $PokemonSpeciesInfoModelCopyWith<$Res> {
  _$PokemonSpeciesInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonSpeciesInfoModelCopyWith<$Res>
    implements $PokemonSpeciesInfoModelCopyWith<$Res> {
  factory _$$_PokemonSpeciesInfoModelCopyWith(_$_PokemonSpeciesInfoModel value,
          $Res Function(_$_PokemonSpeciesInfoModel) then) =
      __$$_PokemonSpeciesInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_PokemonSpeciesInfoModelCopyWithImpl<$Res>
    extends _$PokemonSpeciesInfoModelCopyWithImpl<$Res,
        _$_PokemonSpeciesInfoModel>
    implements _$$_PokemonSpeciesInfoModelCopyWith<$Res> {
  __$$_PokemonSpeciesInfoModelCopyWithImpl(_$_PokemonSpeciesInfoModel _value,
      $Res Function(_$_PokemonSpeciesInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PokemonSpeciesInfoModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSpeciesInfoModel implements _PokemonSpeciesInfoModel {
  const _$_PokemonSpeciesInfoModel({this.name, this.url});

  factory _$_PokemonSpeciesInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonSpeciesInfoModelFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'PokemonSpeciesInfoModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonSpeciesInfoModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonSpeciesInfoModelCopyWith<_$_PokemonSpeciesInfoModel>
      get copyWith =>
          __$$_PokemonSpeciesInfoModelCopyWithImpl<_$_PokemonSpeciesInfoModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSpeciesInfoModelToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesInfoModel implements PokemonSpeciesInfoModel {
  const factory _PokemonSpeciesInfoModel(
      {final String? name, final String? url}) = _$_PokemonSpeciesInfoModel;

  factory _PokemonSpeciesInfoModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonSpeciesInfoModel.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonSpeciesInfoModelCopyWith<_$_PokemonSpeciesInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

PokemonSpeciesFlavorTextEntryModel _$PokemonSpeciesFlavorTextEntryModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonSpeciesFlavorTextEntryModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesFlavorTextEntryModel {
  String? get flavorText => throw _privateConstructorUsedError;
  PokemonSpeciesInfoModel? get language => throw _privateConstructorUsedError;
  PokemonSpeciesInfoModel? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesFlavorTextEntryModelCopyWith<
          PokemonSpeciesFlavorTextEntryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesFlavorTextEntryModelCopyWith<$Res> {
  factory $PokemonSpeciesFlavorTextEntryModelCopyWith(
          PokemonSpeciesFlavorTextEntryModel value,
          $Res Function(PokemonSpeciesFlavorTextEntryModel) then) =
      _$PokemonSpeciesFlavorTextEntryModelCopyWithImpl<$Res,
          PokemonSpeciesFlavorTextEntryModel>;
  @useResult
  $Res call(
      {String? flavorText,
      PokemonSpeciesInfoModel? language,
      PokemonSpeciesInfoModel? version});

  $PokemonSpeciesInfoModelCopyWith<$Res>? get language;
  $PokemonSpeciesInfoModelCopyWith<$Res>? get version;
}

/// @nodoc
class _$PokemonSpeciesFlavorTextEntryModelCopyWithImpl<$Res,
        $Val extends PokemonSpeciesFlavorTextEntryModel>
    implements $PokemonSpeciesFlavorTextEntryModelCopyWith<$Res> {
  _$PokemonSpeciesFlavorTextEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = freezed,
    Object? language = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      flavorText: freezed == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpeciesInfoModelCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $PokemonSpeciesInfoModelCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpeciesInfoModelCopyWith<$Res>? get version {
    if (_value.version == null) {
      return null;
    }

    return $PokemonSpeciesInfoModelCopyWith<$Res>(_value.version!, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonSpeciesFlavorTextEntryModelCopyWith<$Res>
    implements $PokemonSpeciesFlavorTextEntryModelCopyWith<$Res> {
  factory _$$_PokemonSpeciesFlavorTextEntryModelCopyWith(
          _$_PokemonSpeciesFlavorTextEntryModel value,
          $Res Function(_$_PokemonSpeciesFlavorTextEntryModel) then) =
      __$$_PokemonSpeciesFlavorTextEntryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? flavorText,
      PokemonSpeciesInfoModel? language,
      PokemonSpeciesInfoModel? version});

  @override
  $PokemonSpeciesInfoModelCopyWith<$Res>? get language;
  @override
  $PokemonSpeciesInfoModelCopyWith<$Res>? get version;
}

/// @nodoc
class __$$_PokemonSpeciesFlavorTextEntryModelCopyWithImpl<$Res>
    extends _$PokemonSpeciesFlavorTextEntryModelCopyWithImpl<$Res,
        _$_PokemonSpeciesFlavorTextEntryModel>
    implements _$$_PokemonSpeciesFlavorTextEntryModelCopyWith<$Res> {
  __$$_PokemonSpeciesFlavorTextEntryModelCopyWithImpl(
      _$_PokemonSpeciesFlavorTextEntryModel _value,
      $Res Function(_$_PokemonSpeciesFlavorTextEntryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = freezed,
    Object? language = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_PokemonSpeciesFlavorTextEntryModel(
      flavorText: freezed == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as PokemonSpeciesInfoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSpeciesFlavorTextEntryModel
    implements _PokemonSpeciesFlavorTextEntryModel {
  const _$_PokemonSpeciesFlavorTextEntryModel(
      {this.flavorText, this.language, this.version});

  factory _$_PokemonSpeciesFlavorTextEntryModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PokemonSpeciesFlavorTextEntryModelFromJson(json);

  @override
  final String? flavorText;
  @override
  final PokemonSpeciesInfoModel? language;
  @override
  final PokemonSpeciesInfoModel? version;

  @override
  String toString() {
    return 'PokemonSpeciesFlavorTextEntryModel(flavorText: $flavorText, language: $language, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonSpeciesFlavorTextEntryModel &&
            (identical(other.flavorText, flavorText) ||
                other.flavorText == flavorText) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flavorText, language, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonSpeciesFlavorTextEntryModelCopyWith<
          _$_PokemonSpeciesFlavorTextEntryModel>
      get copyWith => __$$_PokemonSpeciesFlavorTextEntryModelCopyWithImpl<
          _$_PokemonSpeciesFlavorTextEntryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSpeciesFlavorTextEntryModelToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesFlavorTextEntryModel
    implements PokemonSpeciesFlavorTextEntryModel {
  const factory _PokemonSpeciesFlavorTextEntryModel(
          {final String? flavorText,
          final PokemonSpeciesInfoModel? language,
          final PokemonSpeciesInfoModel? version}) =
      _$_PokemonSpeciesFlavorTextEntryModel;

  factory _PokemonSpeciesFlavorTextEntryModel.fromJson(
          Map<String, dynamic> json) =
      _$_PokemonSpeciesFlavorTextEntryModel.fromJson;

  @override
  String? get flavorText;
  @override
  PokemonSpeciesInfoModel? get language;
  @override
  PokemonSpeciesInfoModel? get version;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonSpeciesFlavorTextEntryModelCopyWith<
          _$_PokemonSpeciesFlavorTextEntryModel>
      get copyWith => throw _privateConstructorUsedError;
}
