import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pokemon_flutter/core/core.dart';

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

  @override
  Future<Either<Failure, PokemonSpeciesEntities>> getPokemonSpecies(
    String name,
  ) async {
    if (await networkChecker.isConnected) {
      try {
        final resp = await remoteDataSource.getPokemonSpecies(name);
        return Right(resp);
      } on SocketException catch (e) {
        return Left(SocketFailure(e.message));
      }
    } else {
      return const Left(NetworkFailure('Disconnected from the network.'));
    }
  }
}
