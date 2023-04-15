import 'package:dartz/dartz.dart';
import 'package:pokemon_flutter/core/data/models/failures/failure.dart';
import 'package:pokemon_flutter/core/data/models/request/request_pokemon_details.dart';
import 'package:pokemon_flutter/core/data/models/request/request_pokemon_list.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_details_entities.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_list_entities.dart';

abstract class PokemonListRepository {
  Future<Either<Failure, PokemonListEntities>> getPokemonList(
    RequestPokemonListModel request,
  );
  Future<Either<Failure, PokemonDetailsEntities>> getPokemonDetail(
    RequestPokemonDetailsModel request,
  );
}
