import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_details_entities.dart';
import 'package:pokemon_flutter/core/state/state_service.dart';

part 'pokemon_details_state.dart';

final pokemonDetailsNotifier = StateNotifierProvider<PokemonDetailsNotifier,
    StateService<PokemonDetailsEntities>>(
  (Ref ref) {
    return PokemonDetailsNotifier();
  },
);

class PokemonDetailsNotifier
    extends StateNotifier<StateService<PokemonDetailsEntities>> {
  PokemonDetailsNotifier() : super(const StateService.initial());
}
