import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_flutter/core/core.dart';

part 'pokemon_species_provider.dart';

class PokemonSpeciesNotifier
    extends StateNotifier<StateService<PokemonSpeciesEntities>> {
  final PokemonListRepository repository;
  PokemonSpeciesNotifier({
    required this.repository,
  }) : super(const StateService.loading());

  Future<void> getPokemonSpecies(String name) async {
    final resp = await repository.getPokemonSpecies(name);
    final updateState = resp.fold(
      (failure) => StateService<PokemonSpeciesEntities>.error(failure),
      (details) => StateService<PokemonSpeciesEntities>.success(details),
    );

    if (mounted) state = updateState;
  }
}
