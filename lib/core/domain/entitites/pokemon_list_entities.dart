import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_entities.freezed.dart';

@freezed
class PokemonListEntities with _$PokemonListEntities {
  const factory PokemonListEntities({
    required int count,
    String? next,
    String? previous,
    required List<ResultEntities> results,
  }) = _PokemonListEntities;
}

@freezed
class ResultEntities with _$ResultEntities {
  const factory ResultEntities({
    int? id,
    required String name,
    required String url,
  }) = _ResultEntities;
}
