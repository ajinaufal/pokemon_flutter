import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_flutter/core/core.dart';

part 'pokemon_species_model.freezed.dart';
part 'pokemon_species_model.g.dart';

@freezed
class PokemonSpeciesModel with _$PokemonSpeciesModel {
  const factory PokemonSpeciesModel({
    int? baseHappiness,
    int? captureRate,
    List<PokemonSpeciesInfoModel>? eggGroups,
    List<PokemonSpeciesFlavorTextEntryModel>? flavorTextEntries,
    PokemonSpeciesInfoModel? generation,
    PokemonSpeciesInfoModel? growthRate,
    PokemonSpeciesInfoModel? habitat,
    String? name,
    int? order,
    PokemonSpeciesInfoModel? shape,
  }) = _PokemonSpeciesModel;

  factory PokemonSpeciesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesModelFromJson(json);
}

extension PokemonSpeciesModelX on PokemonSpeciesModel {
  PokemonSpeciesEntities toEntity() {
    return PokemonSpeciesEntities(
      baseHappiness: baseHappiness,
      captureRate: captureRate,
      eggGroups: eggGroups?.map((e) => e.toEntity()).toList(),
      flavorTextEntries: flavorTextEntries?.map((e) => e.toEntity()).toList(),
      generation: generation?.toEntity(),
      growthRate: growthRate?.toEntity(),
      habitat: habitat?.toEntity(),
      name: name,
      order: order,
      shape: shape?.toEntity(),
    );
  }
}

@freezed
class PokemonSpeciesInfoModel with _$PokemonSpeciesInfoModel {
  const factory PokemonSpeciesInfoModel({
    String? name,
    String? url,
  }) = _PokemonSpeciesInfoModel;

  factory PokemonSpeciesInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesInfoModelFromJson(json);
}

extension PokemonSpeciesInfoModelX on PokemonSpeciesInfoModel {
  PokemonSpeciesInfoEntities toEntity() {
    return PokemonSpeciesInfoEntities(
      name: name,
      url: url,
    );
  }
}

@freezed
class PokemonSpeciesFlavorTextEntryModel
    with _$PokemonSpeciesFlavorTextEntryModel {
  const factory PokemonSpeciesFlavorTextEntryModel({
    String? flavorText,
    PokemonSpeciesInfoModel? language,
    PokemonSpeciesInfoModel? version,
  }) = _PokemonSpeciesFlavorTextEntryModel;

  factory PokemonSpeciesFlavorTextEntryModel.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonSpeciesFlavorTextEntryModelFromJson(json);
}

extension PokemonSpeciesFlavorTextEntryModelX
    on PokemonSpeciesFlavorTextEntryModel {
  PokemonSpeciesFlavorTextEntryEntities toEntity() {
    return PokemonSpeciesFlavorTextEntryEntities(
      flavorText: flavorText,
      language: language?.toEntity(),
      version: version?.toEntity(),
    );
  }
}
