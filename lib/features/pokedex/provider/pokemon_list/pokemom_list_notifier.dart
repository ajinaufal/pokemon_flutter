import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_flutter/core/data/models/enums/pokemons_enums.dart';
import 'package:pokemon_flutter/core/data/models/request/request_pokemon_details.dart';
import 'package:pokemon_flutter/core/data/models/request/request_pokemon_list.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_details_entities.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_list_entities.dart';
import 'package:pokemon_flutter/core/domain/repositories/pokemon_list_repository.dart';
import 'package:pokemon_flutter/core/state/state_service.dart';

class PokemomListNotifier
    extends StateNotifier<StateService<PokemonDetailsEntities>> {
  PokemomListNotifier({
    required this.repository,
    required this.pokemonDetailsController,
    required this.pokemonDetails,
  }) : super(const StateService.initial());

  final PokemonListRepository repository;
  final StateController<List<PokemonDetailsEntities>> pokemonDetailsController;
  final List<PokemonDetailsEntities> pokemonDetails;

  Future<void> getPokemonList(RequestPokemonListModel params) async {
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
          success: (dataInfo) async {
            var newState =
                await dataInfo.results.map(getPokemonDetails).toList().last;
            return newState;
          },
        ) ??
        const StateService<PokemonDetailsEntities>.empty();

    if (mounted) {
      state = detailsState;
    }
  }

  Future<StateService<PokemonDetailsEntities>> getPokemonDetails(
      pokemon) async {
    final repo1 = await repository
        .getPokemonDetail(RequestPokemonDetailsModel(name: pokemon.name));
    final detailsState = repo1.fold(
      (failure) => StateService<PokemonDetailsEntities>.error(failure),
      (dataDetails) => StateService.success(dataDetails),
    );

    detailsState.whenOrNull(
      success: (data) => pokemonDetailsController.update((state) {
        final newData = updateColors(data);
        final listData = [...state, newData];
        sortPokemon(listData);
        return listData;
      }),
    );
    return detailsState;
  }

  List<PokemonDetailsEntities> sortPokemon(
      List<PokemonDetailsEntities> listDetails) {
    final details = listDetails;
    details.sort((a, b) => a.id!.compareTo(b.id as num));
    return details;
  }

  PokemonDetailsEntities updateColors(PokemonDetailsEntities data) {
    final typeColors = <Color>[];
    data.types
        ?.map(
          (e) => typeColors.addAll(
            e.type?.name?.color ?? TypePokemon.unknown.color,
          ),
        )
        .toList();
    if (typeColors.length < 2) typeColors.add(typeColors.first);
    return data.copyWith(colors: typeColors);
  }
}
