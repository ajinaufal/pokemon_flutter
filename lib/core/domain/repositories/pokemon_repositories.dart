import 'package:dartz/dartz.dart';
import 'package:pokemon_flutter/core/core.dart';

abstract class PokemonListRepository {
  Future<Either<Failure, PokemonListEntities>> getPokemonList(
    RequestPokemonListModel request,
  );
  Future<Either<Failure, PokemonDetailsEntities>> getPokemonDetail(
    RequestPokemonDetailsModel request,
  );

  Future<Either<Failure, PokemonSpeciesEntities>> getPokemonSpecies(
    String name,
  );
}
