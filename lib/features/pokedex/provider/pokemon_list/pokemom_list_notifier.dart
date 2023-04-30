import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_flutter/core/core.dart';

class PokemomListNotifier
    extends StateNotifier<StateService<List<PokemonDetailsEntities>>> {
  final PokemonListRepository repository;
  final StateController<List<PokemonDetailsEntities>> pokemonDetailsController;
  final List<PokemonDetailsEntities> pokemonDetails;
  final int indexPokemon;

  PokemomListNotifier({
    required this.repository,
    required this.pokemonDetailsController,
    required this.pokemonDetails,
    required this.indexPokemon,
  }) : super(const StateService.loading());

  Future<void> pokemonListStarted() async {
    if (pokemonDetails.isNotEmpty) {
      state =
          StateService<List<PokemonDetailsEntities>>.success(pokemonDetails);
      getPokemonList();
    } else {
      state = const StateService<List<PokemonDetailsEntities>>.loading();
      getPokemonList();
    }
  }

  Future<void> getPokemonList() async {
    var params = RequestPokemonListModel(
      limit: 20 * indexPokemon,
      offset: 20 * (indexPokemon - 1),
    );
    final resp = await repository.getPokemonList(params);
    final updateState = resp.fold(
      (failure) => StateService<PokemonListEntities>.error(failure),
      (dataInfo) {
        if (dataInfo.results.isEmpty) {
          return const StateService<PokemonListEntities>.empty();
        }
        return StateService<PokemonListEntities>.success(dataInfo);
      },
    );

    final detailsState = await updateState.whenOrNull(
      success: (pokemonList) async => await Future.wait(
          pokemonList.results.map(_getPokemonDetails).toList()),
    );

    var newState = const StateService<List<PokemonDetailsEntities>>.empty();
    if ((detailsState ?? []).isNotEmpty) {
      newState = StateService<List<PokemonDetailsEntities>>.success(
        pokemonDetails,
      );
    }

    if (mounted) state = newState;
  }

  Future<PokemonDetailsEntities> _getPokemonDetails(
    ResultEntities pokemon,
  ) async {
    final param = RequestPokemonDetailsModel(name: pokemon.name);
    final resp = await repository.getPokemonDetail(param);
    final updateState = resp.fold(
      (failure) => StateService<PokemonDetailsEntities>.error(failure),
      (details) => StateService<PokemonDetailsEntities>.success(details),
    );

    updateState.whenOrNull(success: _arrangement);

    return const PokemonDetailsEntities();
  }

  List<PokemonDetailsEntities> _arrangement(PokemonDetailsEntities details) {
    return pokemonDetailsController.update((state) {
      if (!state.any((a) => a.id == details.id)) {
        state.add(updateColors(details));
      }
      state.sort((a, b) => a.id!.compareTo(b.id as num));
      return state;
    });
  }

  PokemonDetailsEntities updateColors(PokemonDetailsEntities data) {
    final typeColors = <Color>[];
    data.types
        ?.map(
          (e) => typeColors.add(
            e.type?.name?.color ?? TypePokemon.unknown.color,
          ),
        )
        .toList();
    if (typeColors.length < 2) typeColors.add(typeColors.first);
    return data.copyWith(colors: typeColors);
  }
}
