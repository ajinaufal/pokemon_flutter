import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_pokemon_list.freezed.dart';
part 'request_pokemon_list.g.dart';

@freezed
class RequestPokemonListModel with _$RequestPokemonListModel {
  const factory RequestPokemonListModel({
    int? limit,
    int? offset,
    int? type,
  }) = _RequestPokemonListModel;

  factory RequestPokemonListModel.fromJson(Map<String, dynamic> json) =>
      _$RequestPokemonListModelFromJson(json);
}
