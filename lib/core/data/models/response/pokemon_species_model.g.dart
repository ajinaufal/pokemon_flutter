// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonSpeciesModel _$$_PokemonSpeciesModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonSpeciesModel(
      baseHappiness: json['base_happiness'] as int?,
      captureRate: json['capture_rate'] as int?,
      eggGroups: (json['egg_groups'] as List<dynamic>?)
          ?.map((e) =>
              PokemonSpeciesInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      flavorTextEntries: (json['flavor_text_entries'] as List<dynamic>?)
          ?.map((e) => PokemonSpeciesFlavorTextEntryModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      generation: json['generation'] == null
          ? null
          : PokemonSpeciesInfoModel.fromJson(
              json['generation'] as Map<String, dynamic>),
      growthRate: json['growth_rate'] == null
          ? null
          : PokemonSpeciesInfoModel.fromJson(
              json['growth_rate'] as Map<String, dynamic>),
      habitat: json['habitat'] == null
          ? null
          : PokemonSpeciesInfoModel.fromJson(
              json['habitat'] as Map<String, dynamic>),
      name: json['name'] as String?,
      order: json['order'] as int?,
      shape: json['shape'] == null
          ? null
          : PokemonSpeciesInfoModel.fromJson(
              json['shape'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonSpeciesModelToJson(
    _$_PokemonSpeciesModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('base_happiness', instance.baseHappiness);
  writeNotNull('capture_rate', instance.captureRate);
  writeNotNull('egg_groups', instance.eggGroups);
  writeNotNull('flavor_text_entries', instance.flavorTextEntries);
  writeNotNull('generation', instance.generation);
  writeNotNull('growth_rate', instance.growthRate);
  writeNotNull('habitat', instance.habitat);
  writeNotNull('name', instance.name);
  writeNotNull('order', instance.order);
  writeNotNull('shape', instance.shape);
  return val;
}

_$_PokemonSpeciesInfoModel _$$_PokemonSpeciesInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonSpeciesInfoModel(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PokemonSpeciesInfoModelToJson(
    _$_PokemonSpeciesInfoModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('url', instance.url);
  return val;
}

_$_PokemonSpeciesFlavorTextEntryModel
    _$$_PokemonSpeciesFlavorTextEntryModelFromJson(Map<String, dynamic> json) =>
        _$_PokemonSpeciesFlavorTextEntryModel(
          flavorText: json['flavor_text'] as String?,
          language: json['language'] == null
              ? null
              : PokemonSpeciesInfoModel.fromJson(
                  json['language'] as Map<String, dynamic>),
          version: json['version'] == null
              ? null
              : PokemonSpeciesInfoModel.fromJson(
                  json['version'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_PokemonSpeciesFlavorTextEntryModelToJson(
    _$_PokemonSpeciesFlavorTextEntryModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('flavor_text', instance.flavorText);
  writeNotNull('language', instance.language);
  writeNotNull('version', instance.version);
  return val;
}
