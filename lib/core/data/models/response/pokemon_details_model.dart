import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_flutter/core/data/models/enums/pokemons_enums.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_details_entities.dart';

part 'pokemon_details_model.freezed.dart';
part 'pokemon_details_model.g.dart';

@freezed
class PokemonDetailsModel with _$PokemonDetailsModel {
  const factory PokemonDetailsModel({
    List<PokemonDetailsAbilityModel>? abilities,
    int? baseExperience,
    List<PokemonDetailsSpeciesModel>? forms,
    List<PokemonDetailsGameIndexModel>? gameIndices,
    int? height,
    List<PokemonDetailsHeldItemModel>? heldItems,
    int? id,
    bool? isDefault,
    String? locationAreaEncounters,
    List<PokemonDetailsMoveModel>? moves,
    String? name,
    int? order,
    List<PokemonDetailsPastTypeModel>? pastTypes,
    PokemonDetailsSpeciesModel? species,
    PokemonDetailsSpritesModel? sprites,
    List<PokemonDetailsStatModel>? stats,
    List<PokemonDetailsTypeModel>? types,
    int? weight,
  }) = _PokemonDetailsModel;

  factory PokemonDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsModelFromJson(json);
}

extension PokemonDetailsModelX on PokemonDetailsModel {
  PokemonDetailsEntities toEntity() {
    return PokemonDetailsEntities(
      abilities: abilities?.map((e) => e.toEntity()).toList(),
      baseExperience: baseExperience,
      forms: forms?.map((e) => e.toEntity()).toList(),
      gameIndices: gameIndices?.map((e) => e.toEntity()).toList(),
      height: height,
      heldItems: heldItems?.map((e) => e.toEntity()).toList(),
      id: id,
      locationAreaEncounters: locationAreaEncounters,
      moves: moves?.map((e) => e.toEntity()).toList(),
      name: name,
      order: order,
      pastTypes: pastTypes?.map((e) => e.toEntity()).toList(),
      species: species?.toEntity(),
      sprites: sprites?.toEntity(),
      stats: stats?.map((e) => e.toEntity()).toList(),
      types: types?.map((e) => e.toEntity()).toList(),
      weight: weight,
    );
  }
}

@freezed
class PokemonDetailsPastTypeModel with _$PokemonDetailsPastTypeModel {
  const factory PokemonDetailsPastTypeModel({
    PokemonDetailsSpeciesModel? generation,
    List<PokemonDetailsTypeModel>? types,
  }) = _PokemonDetailsPastTypeModel;

  factory PokemonDetailsPastTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsPastTypeModelFromJson(json);
}

extension PokemonDetailsPastTypeModelX on PokemonDetailsPastTypeModel {
  PokemonDetailsPastTypeEntities toEntity() {
    return PokemonDetailsPastTypeEntities(
      generation: generation?.toEntity(),
      types: types?.map((e) => e.toEntity()).toList(),
    );
  }
}

@freezed
class PokemonDetailsHeldItemModel with _$PokemonDetailsHeldItemModel {
  const factory PokemonDetailsHeldItemModel({
    PokemonDetailsSpeciesModel? item,
    List<PokemonDetailsVersionDetailModel>? versionDetails,
  }) = _PokemonDetailsHeldItemModel;

  factory PokemonDetailsHeldItemModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsHeldItemModelFromJson(json);
}

extension PokemonDetailsHeldItemModelX on PokemonDetailsHeldItemModel {
  PokemonDetailsHeldItemEntities toEntity() {
    return PokemonDetailsHeldItemEntities(
      item: item?.toEntity(),
      versionDetails: versionDetails?.map((e) => e.toEntity()).toList(),
    );
  }
}

@freezed
class PokemonDetailsVersionDetailModel with _$PokemonDetailsVersionDetailModel {
  const factory PokemonDetailsVersionDetailModel({
    int? rarity,
    PokemonDetailsSpeciesModel? version,
  }) = _PokemonDetailsVersionDetailModel;

  factory PokemonDetailsVersionDetailModel.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonDetailsVersionDetailModelFromJson(json);
}

extension PokemonDetailsVersionDetailModelX
    on PokemonDetailsVersionDetailModel {
  PokemonDetailsVersionDetailEntities toEntity() {
    return PokemonDetailsVersionDetailEntities(
      rarity: rarity,
      version: version?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsAbilityModel with _$PokemonDetailsAbilityModel {
  const factory PokemonDetailsAbilityModel({
    PokemonDetailsSpeciesModel? ability,
    bool? isHidden,
    int? slot,
  }) = _PokemonDetailsAbilityModel;

  factory PokemonDetailsAbilityModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsAbilityModelFromJson(json);
}

extension PokemonDetailsAbilityModelX on PokemonDetailsAbilityModel {
  PokemonDetailsAbilityEntities toEntity() {
    return PokemonDetailsAbilityEntities(
      ability: ability?.toEntity(),
      isHidden: isHidden,
      slot: slot,
    );
  }
}

@freezed
class PokemonDetailsSpeciesModel with _$PokemonDetailsSpeciesModel {
  const factory PokemonDetailsSpeciesModel({
    String? name,
    String? url,
  }) = _PokemonDetailsSpeciesModel;

  factory PokemonDetailsSpeciesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsSpeciesModelFromJson(json);
}

extension PokemonDetailsSpeciesModelX on PokemonDetailsSpeciesModel {
  PokemonDetailsSpeciesEntities toEntity() {
    return PokemonDetailsSpeciesEntities(
      name: name,
      url: url,
    );
  }
}

@freezed
class PokemonDetailsGameIndexModel with _$PokemonDetailsGameIndexModel {
  const factory PokemonDetailsGameIndexModel({
    int? gameIndex,
    PokemonDetailsSpeciesModel? version,
  }) = _PokemonDetailsGameIndexModel;

  factory PokemonDetailsGameIndexModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsGameIndexModelFromJson(json);
}

extension PokemonDetailsGameIndexModelX on PokemonDetailsGameIndexModel {
  PokemonDetailsGameIndexEntities toEntity() {
    return PokemonDetailsGameIndexEntities(
      gameIndex: gameIndex,
      version: version?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsMoveModel with _$PokemonDetailsMoveModel {
  const factory PokemonDetailsMoveModel({
    PokemonDetailsSpeciesModel? move,
    List<PokemonDetailsVersionGroupDetailModel>? versionGroupDetails,
  }) = _PokemonDetailsMoveModel;

  factory PokemonDetailsMoveModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsMoveModelFromJson(json);
}

extension PokemonDetailsMoveModelX on PokemonDetailsMoveModel {
  PokemonDetailsMoveEntities toEntity() {
    return PokemonDetailsMoveEntities(
      move: move?.toEntity(),
      versionGroupDetails:
          versionGroupDetails?.map((e) => e.toEntity()).toList(),
    );
  }
}

@freezed
class PokemonDetailsVersionGroupDetailModel
    with _$PokemonDetailsVersionGroupDetailModel {
  const factory PokemonDetailsVersionGroupDetailModel({
    int? levelLearnedAt,
    PokemonDetailsSpeciesModel? moveLearnMethod,
    PokemonDetailsSpeciesModel? versionGroup,
  }) = _PokemonDetailsVersionGroupDetailModel;

  factory PokemonDetailsVersionGroupDetailModel.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonDetailsVersionGroupDetailModelFromJson(json);
}

extension PokemonDetailsVersionGroupDetailModelX
    on PokemonDetailsVersionGroupDetailModel {
  PokemonDetailsVersionGroupDetailEntities toEntity() {
    return PokemonDetailsVersionGroupDetailEntities(
      levelLearnedAt: levelLearnedAt,
      moveLearnMethod: moveLearnMethod?.toEntity(),
      versionGroup: versionGroup?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsGenerationVModel with _$PokemonDetailsGenerationVModel {
  const factory PokemonDetailsGenerationVModel({
    PokemonDetailsSpritesModel? blackWhite,
  }) = _PokemonDetailsGenerationVModel;

  factory PokemonDetailsGenerationVModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsGenerationVModelFromJson(json);
}

extension PokemonDetailsGenerationVModelX on PokemonDetailsGenerationVModel {
  PokemonDetailsGenerationVEntities toEntity() {
    return PokemonDetailsGenerationVEntities(
      blackWhite: blackWhite?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsGenerationIvModel with _$PokemonDetailsGenerationIvModel {
  const factory PokemonDetailsGenerationIvModel({
    PokemonDetailsSpritesModel? diamondPearl,
    PokemonDetailsSpritesModel? heartgoldSoulsilver,
    PokemonDetailsSpritesModel? platinum,
  }) = _PokemonDetailsGenerationIvModel;

  factory PokemonDetailsGenerationIvModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsGenerationIvModelFromJson(json);
}

extension PokemonDetailsGenerationIvModelX on PokemonDetailsGenerationIvModel {
  PokemonDetailsGenerationIvEntities toEntity() {
    return PokemonDetailsGenerationIvEntities(
      diamondPearl: diamondPearl?.toEntity(),
      heartgoldSoulsilver: heartgoldSoulsilver?.toEntity(),
      platinum: platinum?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsVersionsModel with _$PokemonDetailsVersionsModel {
  const factory PokemonDetailsVersionsModel({
    PokemonDetailsGenerationIModel? generationI,
    PokemonDetailsGenerationIiModel? generationIi,
    PokemonDetailsGenerationIiiModel? generationIii,
    PokemonDetailsGenerationIvModel? generationIv,
    PokemonDetailsGenerationVModel? generationV,
    Map<String, PokemonDetailsHomeModel>? generationVi,
    PokemonDetailsGenerationViiModel? generationVii,
    PokemonDetailsGenerationViiiModel? generationViii,
  }) = _Versions;

  factory PokemonDetailsVersionsModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsVersionsModelFromJson(json);
}

extension PokemonDetailsVersionsModelX on PokemonDetailsVersionsModel {
  PokemonDetailsVersionsEntities toEntity() {
    return PokemonDetailsVersionsEntities(
      generationI: generationI?.toEntity(),
      generationIi: generationIi?.toEntity(),
      generationIii: generationIii?.toEntity(),
      generationIv: generationIv?.toEntity(),
      generationV: generationV?.toEntity(),
      generationVi: generationVi?.map(
        (key, value) => MapEntry(
          key,
          value.toEntity(),
        ),
      ),
      generationVii: generationVii?.toEntity(),
      generationViii: generationViii?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsSpritesModel with _$PokemonDetailsSpritesModel {
  const factory PokemonDetailsSpritesModel({
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
    PokemonDetailsOtherModel? other,
    PokemonDetailsVersionsModel? versions,
    PokemonDetailsSpritesModel? animated,
  }) = _Sprites;

  factory PokemonDetailsSpritesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsSpritesModelFromJson(json);
}

extension PokemonDetailsSpritesModelX on PokemonDetailsSpritesModel {
  PokemonDetailsSpritesEntities toEntity() {
    return PokemonDetailsSpritesEntities(
      backDefault: backDefault,
      backFemale: backFemale,
      backShiny: backShiny,
      backShinyFemale: backShinyFemale,
      frontDefault: frontDefault,
      frontFemale: frontFemale,
      frontShiny: frontShiny,
      frontShinyFemale: frontShinyFemale,
      other: other?.toEntity(),
      versions: versions?.toEntity(),
      animated: animated?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsGenerationIModel with _$PokemonDetailsGenerationIModel {
  const factory PokemonDetailsGenerationIModel({
    PokemonDetailsRedBlueModel? redBlue,
    PokemonDetailsRedBlueModel? yellow,
  }) = _GenerationI;

  factory PokemonDetailsGenerationIModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsGenerationIModelFromJson(json);
}

extension PokemonDetailsGenerationIModelX on PokemonDetailsGenerationIModel {
  PokemonDetailsGenerationIEntities toEntity() {
    return PokemonDetailsGenerationIEntities(
      redBlue: redBlue?.toEntity(),
      yellow: yellow?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsRedBlueModel with _$PokemonDetailsRedBlueModel {
  const factory PokemonDetailsRedBlueModel({
    String? backDefault,
    String? backGray,
    String? backTransparent,
    String? frontDefault,
    String? frontGray,
    String? frontTransparent,
  }) = _PokemonDetailsRedBlueModel;

  factory PokemonDetailsRedBlueModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsRedBlueModelFromJson(json);
}

extension PokemonDetailsRedBlueModelX on PokemonDetailsRedBlueModel {
  PokemonDetailsRedBlueEntities toEntity() {
    return PokemonDetailsRedBlueEntities(
      backDefault: backDefault,
      backGray: backGray,
      backTransparent: backTransparent,
      frontDefault: frontDefault,
      frontGray: frontGray,
      frontTransparent: frontTransparent,
    );
  }
}

@freezed
class PokemonDetailsGenerationIiModel with _$PokemonDetailsGenerationIiModel {
  const factory PokemonDetailsGenerationIiModel({
    PokemonDetailsCrystalModel? crystal,
    PokemonDetailsGoldModel? gold,
    PokemonDetailsGoldModel? silver,
  }) = _GenerationIi;

  factory PokemonDetailsGenerationIiModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsGenerationIiModelFromJson(json);
}

extension PokemonDetailsGenerationIiModelX on PokemonDetailsGenerationIiModel {
  PokemonDetailsGenerationIiEntities toEntity() {
    return PokemonDetailsGenerationIiEntities(
      crystal: crystal?.toEntity(),
      gold: gold?.toEntity(),
      silver: silver?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsCrystalModel with _$PokemonDetailsCrystalModel {
  const factory PokemonDetailsCrystalModel({
    String? backDefault,
    String? backShiny,
    String? backShinyTransparent,
    String? backTransparent,
    String? frontDefault,
    String? frontShiny,
    String? frontShinyTransparent,
    String? frontTransparent,
  }) = _PokemonDetailsCrystalModel;

  factory PokemonDetailsCrystalModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsCrystalModelFromJson(json);
}

extension PokemonDetailsCrystalModelX on PokemonDetailsCrystalModel {
  PokemonDetailsCrystalEntities toEntity() {
    return PokemonDetailsCrystalEntities(
      backDefault: backDefault,
      backShiny: backShiny,
      backShinyTransparent: backShinyTransparent,
      backTransparent: backTransparent,
      frontDefault: frontDefault,
      frontShiny: frontShiny,
      frontShinyTransparent: frontShinyTransparent,
      frontTransparent: frontTransparent,
    );
  }
}

@freezed
class PokemonDetailsGoldModel with _$PokemonDetailsGoldModel {
  const factory PokemonDetailsGoldModel({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
    String? frontTransparent,
  }) = _PokemonDetailsGoldModel;

  factory PokemonDetailsGoldModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsGoldModelFromJson(json);
}

extension PokemonDetailsGoldModelX on PokemonDetailsGoldModel {
  PokemonDetailsGoldEntities toEntity() {
    return PokemonDetailsGoldEntities(
      backDefault: backDefault,
      backShiny: backShiny,
      frontDefault: frontDefault,
      frontShiny: frontShiny,
      frontTransparent: frontTransparent,
    );
  }
}

@freezed
class PokemonDetailsGenerationIiiModel with _$PokemonDetailsGenerationIiiModel {
  const factory PokemonDetailsGenerationIiiModel({
    PokemonDetailsOfficialArtworkModel? emerald,
    PokemonDetailsGoldModel? fireredLeafgreen,
    PokemonDetailsGoldModel? rubySapphire,
  }) = _PokemonDetailsGenerationIiiModel;

  factory PokemonDetailsGenerationIiiModel.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonDetailsGenerationIiiModelFromJson(json);
}

extension PokemonDetailsGenerationIiiModelX
    on PokemonDetailsGenerationIiiModel {
  PokemonDetailsGenerationIiiEntities toEntity() {
    return PokemonDetailsGenerationIiiEntities(
      emerald: emerald?.toEntity(),
      fireredLeafgreen: fireredLeafgreen?.toEntity(),
      rubySapphire: rubySapphire?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsOfficialArtworkModel
    with _$PokemonDetailsOfficialArtworkModel {
  const factory PokemonDetailsOfficialArtworkModel({
    String? frontDefault,
    String? frontShiny,
  }) = _PokemonDetailsOfficialArtworkModel;

  factory PokemonDetailsOfficialArtworkModel.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonDetailsOfficialArtworkModelFromJson(json);
}

extension PokemonDetailsOfficialArtworkModelX
    on PokemonDetailsOfficialArtworkModel {
  PokemonDetailsOfficialArtworkEntities toEntity() {
    return PokemonDetailsOfficialArtworkEntities(
      frontDefault: frontDefault,
      frontShiny: frontShiny,
    );
  }
}

@freezed
class PokemonDetailsHomeModel with _$PokemonDetailsHomeModel {
  const factory PokemonDetailsHomeModel({
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) = _PokemonDetailsHomeModel;

  factory PokemonDetailsHomeModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsHomeModelFromJson(json);
}

extension PokemonDetailsHomeModelX on PokemonDetailsHomeModel {
  PokemonDetailsHomeEntities toEntity() {
    return PokemonDetailsHomeEntities(
      frontDefault: frontDefault,
      frontFemale: frontFemale,
      frontShiny: frontShiny,
      frontShinyFemale: frontShinyFemale,
    );
  }
}

@freezed
class PokemonDetailsGenerationViiModel with _$PokemonDetailsGenerationViiModel {
  const factory PokemonDetailsGenerationViiModel({
    PokemonDetailsDreamWorldModel? icons,
    PokemonDetailsHomeModel? ultraSunUltraMoon,
  }) = _GenerationVii;

  factory PokemonDetailsGenerationViiModel.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonDetailsGenerationViiModelFromJson(json);
}

extension PokemonDetailsGenerationViiModelX
    on PokemonDetailsGenerationViiModel {
  PokemonDetailsGenerationViiEntities toEntity() {
    return PokemonDetailsGenerationViiEntities(
      icons: icons?.toEntity(),
      ultraSunUltraMoon: ultraSunUltraMoon?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsDreamWorldModel with _$PokemonDetailsDreamWorldModel {
  const factory PokemonDetailsDreamWorldModel({
    String? frontDefault,
    String? frontFemale,
  }) = _PokemonDetailsDreamWorldModel;

  factory PokemonDetailsDreamWorldModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsDreamWorldModelFromJson(json);
}

extension PokemonDetailsDreamWorldModelX on PokemonDetailsDreamWorldModel {
  PokemonDetailsDreamWorldEntities toEntity() {
    return PokemonDetailsDreamWorldEntities(
      frontDefault: frontDefault,
      frontFemale: frontFemale,
    );
  }
}

@freezed
class PokemonDetailsGenerationViiiModel
    with _$PokemonDetailsGenerationViiiModel {
  const factory PokemonDetailsGenerationViiiModel({
    PokemonDetailsDreamWorldModel? icons,
  }) = _PokemonDetailsGenerationViiiModel;

  factory PokemonDetailsGenerationViiiModel.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonDetailsGenerationViiiModelFromJson(json);
}

extension PokemonDetailsGenerationViiiModelX
    on PokemonDetailsGenerationViiiModel {
  PokemonDetailsGenerationViiiEntities toEntity() {
    return PokemonDetailsGenerationViiiEntities(
      icons: icons?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsOtherModel with _$PokemonDetailsOtherModel {
  const factory PokemonDetailsOtherModel({
    PokemonDetailsDreamWorldModel? dreamWorld,
    PokemonDetailsHomeModel? home,
    @JsonKey(name: 'official-artwork')
        PokemonDetailsOfficialArtworkModel? officialArtwork,
  }) = _PokemonDetailsOtherModel;

  factory PokemonDetailsOtherModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsOtherModelFromJson(json);
}

extension PokemonDetailsOtherModelX on PokemonDetailsOtherModel {
  PokemonDetailsOtherEntities toEntity() {
    return PokemonDetailsOtherEntities(
      dreamWorld: dreamWorld?.toEntity(),
      home: home?.toEntity(),
      officialArtwork: officialArtwork?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsStatModel with _$PokemonDetailsStatModel {
  const factory PokemonDetailsStatModel({
    int? baseStat,
    int? effort,
    PokemonDetailsSpeciesModel? stat,
  }) = _Stat;

  factory PokemonDetailsStatModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsStatModelFromJson(json);
}

extension PokemonDetailsStatModelX on PokemonDetailsStatModel {
  PokemonDetailsStatEntities toEntity() {
    return PokemonDetailsStatEntities(
      baseStat: baseStat,
      effort: effort,
      stat: stat?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsTypeModel with _$PokemonDetailsTypeModel {
  const factory PokemonDetailsTypeModel({
    int? slot,
    PokemonDetailsElementsModel? type,
  }) = _PokemonDetailsTypeModel;

  factory PokemonDetailsTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsTypeModelFromJson(json);
}

extension PokemonDetailsTypeModelX on PokemonDetailsTypeModel {
  PokemonDetailsTypeEntities toEntity() {
    return PokemonDetailsTypeEntities(
      slot: slot,
      type: type?.toEntity(),
    );
  }
}

@freezed
class PokemonDetailsElementsModel with _$PokemonDetailsElementsModel {
  const factory PokemonDetailsElementsModel({
    TypePokemon? name,
    String? url,
  }) = _PokemonDetailsElementModel;

  factory PokemonDetailsElementsModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsElementsModelFromJson(json);
}

extension PokemonDetailsElementsModelX on PokemonDetailsElementsModel {
  PokemonDetailsElementsEntities toEntity() {
    return PokemonDetailsElementsEntities(
      name: name,
      url: url,
    );
  }
}
