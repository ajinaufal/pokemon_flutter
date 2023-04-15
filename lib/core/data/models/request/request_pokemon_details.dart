import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_pokemon_details.freezed.dart';

@freezed
class RequestPokemonDetailsModel with _$RequestPokemonDetailsModel {
  const factory RequestPokemonDetailsModel({
    String? name,
    int? id,
  }) = _RequestPokemonDetailsModel;
}
