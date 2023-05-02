import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_species_entities.freezed.dart';

@freezed
class PokemonSpeciesEntities with _$PokemonSpeciesEntities {
  const factory PokemonSpeciesEntities({
    int? baseHappiness,
    int? captureRate,
    List<PokemonSpeciesInfoEntities>? eggGroups,
    List<PokemonSpeciesFlavorTextEntryEntities>? flavorTextEntries,
    PokemonSpeciesInfoEntities? generation,
    PokemonSpeciesInfoEntities? growthRate,
    PokemonSpeciesInfoEntities? habitat,
    String? name,
    int? order,
    PokemonSpeciesInfoEntities? shape,
  }) = _PokemonSpeciesEntities;
}

@freezed
class PokemonSpeciesInfoEntities with _$PokemonSpeciesInfoEntities {
  const factory PokemonSpeciesInfoEntities({
    String? name,
    String? url,
  }) = _PokemonSpeciesInfoEntities;
}

@freezed
class PokemonSpeciesFlavorTextEntryEntities
    with _$PokemonSpeciesFlavorTextEntryEntities {
  const factory PokemonSpeciesFlavorTextEntryEntities({
    String? flavorText,
    PokemonSpeciesInfoEntities? language,
    PokemonSpeciesInfoEntities? version,
  }) = _PokemonSpeciesFlavorTextEntryEntities;
}
