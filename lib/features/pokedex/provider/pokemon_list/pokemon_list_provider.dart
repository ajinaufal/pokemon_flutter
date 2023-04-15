import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_flutter/core/data/repositories/pokemon_repositories_impl.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_details_entities.dart';

import 'package:pokemon_flutter/core/state/state_service.dart';
import 'package:pokemon_flutter/features/pokedex/provider/pokemon_list/pokemom_list_notifier.dart';

final pokemomListNotifier = StateNotifierProvider<PokemomListNotifier,
    StateService<PokemonDetailsEntities>>(
  (Ref ref) {
    final repoPokemon = ref.read(pokemonRepositoryProvider);
    final pokemonDetailsController =
        ref.watch(pokemonListDetaisProvider.notifier);
    final pokemonDetails = ref.read(pokemonListDetaisProvider);
    return PokemomListNotifier(
      repository: repoPokemon,
      pokemonDetailsController: pokemonDetailsController,
      pokemonDetails: pokemonDetails,
    );
  },
);

final pokemonListDetaisProvider =
    StateProvider<List<PokemonDetailsEntities>>((ref) => []);
