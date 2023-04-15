import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_list_entities.dart';

part 'pokemon_list_model.freezed.dart';
part 'pokemon_list_model.g.dart';

@freezed
class PokemonListModel with _$PokemonListModel {
  const factory PokemonListModel({
    required int count,
    String? next,
    String? previous,
    required List<ResultModel> results,
  }) = _PokemonListModel;

  factory PokemonListModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonListModelFromJson(json);
}

extension PokemonListModelX on PokemonListModel {
  PokemonListEntities toEntity() {
    return PokemonListEntities(
      count: count,
      next: next,
      previous: previous,
      results: List.from(results.map((e) => e.toEntity())),
    );
  }
}

@freezed
class ResultModel with _$ResultModel {
  const factory ResultModel({
    required String name,
    required String url,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}

extension ResultModelX on ResultModel {
  ResultEntities toEntity() {
    return ResultEntities(
      name: name,
      url: url,
    );
  }
}
