part of 'pokemon_species_notifier.dart';

final pokemonSpeciesNotifier = StateNotifierProvider<PokemonSpeciesNotifier,
    StateService<PokemonSpeciesEntities>>(
  (Ref ref) {
    final repoPokemon = ref.read(pokemonRepositoryProvider);
    return PokemonSpeciesNotifier(
      repository: repoPokemon,
    );
  },
);
