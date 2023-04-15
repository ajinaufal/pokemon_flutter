import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_flutter/core/data/models/enums/pokemons_enums.dart';

part 'pokemon_details_entities.freezed.dart';

@freezed
class PokemonDetailsEntities with _$PokemonDetailsEntities {
  const factory PokemonDetailsEntities({
    int? id,
    List<PokemonDetailsAbilityEntities>? abilities,
    int? baseExperience,
    List<PokemonDetailsSpeciesEntities>? forms,
    List<PokemonDetailsGameIndexEntities>? gameIndices,
    int? height,
    List<PokemonDetailsHeldItemEntities>? heldItems,
    bool? isDefault,
    String? locationAreaEncounters,
    List<PokemonDetailsMoveEntities>? moves,
    String? name,
    int? order,
    List<PokemonDetailsPastTypeEntities>? pastTypes,
    PokemonDetailsSpeciesEntities? species,
    PokemonDetailsSpritesEntities? sprites,
    List<PokemonDetailsStatEntities>? stats,
    List<PokemonDetailsTypeEntities>? types,
    int? weight,
    List<Color>? colors,
  }) = _PokemonDetailsEntities;
}

@freezed
class PokemonDetailsPastTypeEntities with _$PokemonDetailsPastTypeEntities {
  const factory PokemonDetailsPastTypeEntities({
    PokemonDetailsSpeciesEntities? generation,
    List<PokemonDetailsTypeEntities>? types,
  }) = _PokemonDetailsPastTypeEntities;
}

@freezed
class PokemonDetailsHeldItemEntities with _$PokemonDetailsHeldItemEntities {
  const factory PokemonDetailsHeldItemEntities({
    PokemonDetailsSpeciesEntities? item,
    List<PokemonDetailsVersionDetailEntities>? versionDetails,
  }) = _PokemonDetailsHeldItemEntities;
}

@freezed
class PokemonDetailsVersionDetailEntities
    with _$PokemonDetailsVersionDetailEntities {
  const factory PokemonDetailsVersionDetailEntities({
    int? rarity,
    PokemonDetailsSpeciesEntities? version,
  }) = _PokemonDetailsVersionDetailEntities;
}

@freezed
class PokemonDetailsAbilityEntities with _$PokemonDetailsAbilityEntities {
  const factory PokemonDetailsAbilityEntities({
    PokemonDetailsSpeciesEntities? ability,
    bool? isHidden,
    int? slot,
  }) = _PokemonDetailsAbilityEntities;
}

@freezed
class PokemonDetailsSpeciesEntities with _$PokemonDetailsSpeciesEntities {
  const factory PokemonDetailsSpeciesEntities({
    String? name,
    String? url,
  }) = _PokemonDetailsSpeciesEntities;
}

@freezed
class PokemonDetailsGameIndexEntities with _$PokemonDetailsGameIndexEntities {
  const factory PokemonDetailsGameIndexEntities({
    int? gameIndex,
    PokemonDetailsSpeciesEntities? version,
  }) = _PokemonDetailsGameIndexEntities;
}

@freezed
class PokemonDetailsMoveEntities with _$PokemonDetailsMoveEntities {
  const factory PokemonDetailsMoveEntities({
    PokemonDetailsSpeciesEntities? move,
    List<PokemonDetailsVersionGroupDetailEntities>? versionGroupDetails,
  }) = _PokemonDetailsMoveEntities;
}

@freezed
class PokemonDetailsVersionGroupDetailEntities
    with _$PokemonDetailsVersionGroupDetailEntities {
  const factory PokemonDetailsVersionGroupDetailEntities({
    int? levelLearnedAt,
    PokemonDetailsSpeciesEntities? moveLearnMethod,
    PokemonDetailsSpeciesEntities? versionGroup,
  }) = _PokemonDetailsVersionGroupDetailEntities;
}

@freezed
class PokemonDetailsGenerationVEntities
    with _$PokemonDetailsGenerationVEntities {
  const factory PokemonDetailsGenerationVEntities({
    PokemonDetailsSpritesEntities? blackWhite,
  }) = _PokemonDetailsGenerationVEntities;
}

@freezed
class PokemonDetailsGenerationIvEntities
    with _$PokemonDetailsGenerationIvEntities {
  const factory PokemonDetailsGenerationIvEntities({
    PokemonDetailsSpritesEntities? diamondPearl,
    PokemonDetailsSpritesEntities? heartgoldSoulsilver,
    PokemonDetailsSpritesEntities? platinum,
  }) = _PokemonDetailsGenerationIvEntities;
}

@freezed
class PokemonDetailsVersionsEntities with _$PokemonDetailsVersionsEntities {
  const factory PokemonDetailsVersionsEntities({
    PokemonDetailsGenerationIEntities? generationI,
    PokemonDetailsGenerationIiEntities? generationIi,
    PokemonDetailsGenerationIiiEntities? generationIii,
    PokemonDetailsGenerationIvEntities? generationIv,
    PokemonDetailsGenerationVEntities? generationV,
    Map<String, PokemonDetailsHomeEntities>? generationVi,
    PokemonDetailsGenerationViiEntities? generationVii,
    PokemonDetailsGenerationViiiEntities? generationViii,
  }) = _PokemonDetailsVersionsEntities;
}

@freezed
class PokemonDetailsSpritesEntities with _$PokemonDetailsSpritesEntities {
  const factory PokemonDetailsSpritesEntities({
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
    PokemonDetailsOtherEntities? other,
    PokemonDetailsVersionsEntities? versions,
    PokemonDetailsSpritesEntities? animated,
  }) = _PokemonDetailsSpritesEntities;
}

@freezed
class PokemonDetailsGenerationIEntities
    with _$PokemonDetailsGenerationIEntities {
  const factory PokemonDetailsGenerationIEntities({
    PokemonDetailsRedBlueEntities? redBlue,
    PokemonDetailsRedBlueEntities? yellow,
  }) = _PokemonDetailsGenerationIEntities;
}

@freezed
class PokemonDetailsRedBlueEntities with _$PokemonDetailsRedBlueEntities {
  const factory PokemonDetailsRedBlueEntities({
    String? backDefault,
    String? backGray,
    String? backTransparent,
    String? frontDefault,
    String? frontGray,
    String? frontTransparent,
  }) = _PokemonDetailsRedBlueEntities;
}

@freezed
class PokemonDetailsGenerationIiEntities
    with _$PokemonDetailsGenerationIiEntities {
  const factory PokemonDetailsGenerationIiEntities({
    PokemonDetailsCrystalEntities? crystal,
    PokemonDetailsGoldEntities? gold,
    PokemonDetailsGoldEntities? silver,
  }) = _PokemonDetailsGenerationIiEntities;
}

@freezed
class PokemonDetailsCrystalEntities with _$PokemonDetailsCrystalEntities {
  const factory PokemonDetailsCrystalEntities({
    String? backDefault,
    String? backShiny,
    String? backShinyTransparent,
    String? backTransparent,
    String? frontDefault,
    String? frontShiny,
    String? frontShinyTransparent,
    String? frontTransparent,
  }) = _PokemonDetailsCrystalEntities;
}

@freezed
class PokemonDetailsGoldEntities with _$PokemonDetailsGoldEntities {
  const factory PokemonDetailsGoldEntities({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
    String? frontTransparent,
  }) = _PokemonDetailsGoldEntities;
}

@freezed
class PokemonDetailsGenerationIiiEntities
    with _$PokemonDetailsGenerationIiiEntities {
  const factory PokemonDetailsGenerationIiiEntities({
    PokemonDetailsOfficialArtworkEntities? emerald,
    PokemonDetailsGoldEntities? fireredLeafgreen,
    PokemonDetailsGoldEntities? rubySapphire,
  }) = _PokemonDetailsGenerationIiiEntities;
}

@freezed
class PokemonDetailsOfficialArtworkEntities
    with _$PokemonDetailsOfficialArtworkEntities {
  const factory PokemonDetailsOfficialArtworkEntities({
    String? frontDefault,
    String? frontShiny,
  }) = _PokemonDetailsOfficialArtworkEntities;
}

@freezed
class PokemonDetailsHomeEntities with _$PokemonDetailsHomeEntities {
  const factory PokemonDetailsHomeEntities({
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) = _PokemonDetailsHomeEntities;
}

@freezed
class PokemonDetailsGenerationViiEntities
    with _$PokemonDetailsGenerationViiEntities {
  const factory PokemonDetailsGenerationViiEntities({
    PokemonDetailsDreamWorldEntities? icons,
    PokemonDetailsHomeEntities? ultraSunUltraMoon,
  }) = _PokemonDetailsGenerationViiEntities;
}

@freezed
class PokemonDetailsDreamWorldEntities with _$PokemonDetailsDreamWorldEntities {
  const factory PokemonDetailsDreamWorldEntities({
    String? frontDefault,
    String? frontFemale,
  }) = _PokemonDetailsDreamWorldEntities;
}

@freezed
class PokemonDetailsGenerationViiiEntities
    with _$PokemonDetailsGenerationViiiEntities {
  const factory PokemonDetailsGenerationViiiEntities({
    PokemonDetailsDreamWorldEntities? icons,
  }) = _PokemonDetailsGenerationViiiEntities;
}

@freezed
class PokemonDetailsOtherEntities with _$PokemonDetailsOtherEntities {
  const factory PokemonDetailsOtherEntities({
    PokemonDetailsDreamWorldEntities? dreamWorld,
    PokemonDetailsHomeEntities? home,
    PokemonDetailsOfficialArtworkEntities? officialArtwork,
  }) = _PokemonDetailsOtherEntities;
}

@freezed
class PokemonDetailsStatEntities with _$PokemonDetailsStatEntities {
  const factory PokemonDetailsStatEntities({
    int? baseStat,
    int? effort,
    PokemonDetailsSpeciesEntities? stat,
  }) = _PokemonDetailsStatEntities;
}

@freezed
class PokemonDetailsTypeEntities with _$PokemonDetailsTypeEntities {
  const factory PokemonDetailsTypeEntities({
    int? slot,
    PokemonDetailsElementsEntities? type,
  }) = _PokemonDetailsTypeEntities;
}

@freezed
class PokemonDetailsElementsEntities with _$PokemonDetailsElementsEntities {
  const factory PokemonDetailsElementsEntities({
    TypePokemon? name,
    String? url,
  }) = _PokemonDetailsElementEntities;
}
