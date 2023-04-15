import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pokemon_flutter/core/data/datasources/remote/pokemon_remote_data_sources.dart';
import 'package:pokemon_flutter/core/data/models/failures/failure.dart';
import 'package:pokemon_flutter/core/data/models/request/request_pokemon_details.dart';
import 'package:pokemon_flutter/core/data/models/request/request_pokemon_list.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_details_entities.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_list_entities.dart';
import 'package:pokemon_flutter/core/domain/repositories/pokemon_list_repository.dart';
import 'package:pokemon_flutter/core/services/api_service.dart';
import 'package:pokemon_flutter/core/utils/network_checker.dart';

final pokemonRepositoryProvider = Provider.autoDispose<PokemonListRepository>(
  (ref) {
    ref.onDispose(() {});
    return PokemonListRepositryImpl(
      remoteDataSource: PokemonRemoteDataSourceImpl(
        apiService: ApiService(),
      ),
      networkChecker: NetworkCheckerImpl(
        connectionChecker: InternetConnectionChecker(),
      ),
    );
  },
);

class PokemonListRepositryImpl implements PokemonListRepository {
  final PokemonRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;

  PokemonListRepositryImpl({
    required this.remoteDataSource,
    required this.networkChecker,
  });

  @override
  Future<Either<Failure, PokemonListEntities>> getPokemonList(
      RequestPokemonListModel request) async {
    if (await networkChecker.isConnected) {
      try {
        final resp = await remoteDataSource.getPokemonList(request);
        return Right(resp);
      } on SocketException catch (e) {
        return Left(SocketFailure(e.message));
      }
    } else {
      return const Left(NetworkFailure('Disconnected from the network.'));
    }
  }

  @override
  Future<Either<Failure, PokemonDetailsEntities>> getPokemonDetail(
      RequestPokemonDetailsModel request) async {
    if (await networkChecker.isConnected) {
      try {
        final resp = await remoteDataSource.getPokemonDetails(request);
        return Right(resp);
      } on SocketException catch (e) {
        return Left(SocketFailure(e.message));
      }
    } else {
      return const Left(NetworkFailure('Disconnected from the network.'));
    }
  }
}
