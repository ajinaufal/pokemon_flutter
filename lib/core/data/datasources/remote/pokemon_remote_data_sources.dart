import 'package:pokemon_flutter/core/data/data.dart';
import 'package:pokemon_flutter/core/domain/entitites/entitites.dart';
import 'package:pokemon_flutter/core/services/api_service.dart';

abstract class PokemonRemoteDataSource {
  Future<PokemonListEntities> getPokemonList(RequestPokemonListModel request);
  Future<PokemonDetailsEntities> getPokemonDetails(
    RequestPokemonDetailsModel request,
  );
  Future<PokemonSpeciesEntities> getPokemonSpecies(String name);
}

class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final ApiService apiService;

  PokemonRemoteDataSourceImpl({required this.apiService});

  @override
  Future<PokemonListEntities> getPokemonList(
      RequestPokemonListModel request) async {
    final response = await apiService.get(
      '/pokemon',
      queryParameters: request.toJson(),
    );
    if (response.statusCode == 200) {
      return PokemonListModel.fromJson(response.data).toEntity();
    } else {
      throw Exception(response);
    }
  }

  @override
  Future<PokemonDetailsEntities> getPokemonDetails(
      RequestPokemonDetailsModel request) async {
    final response =
        await apiService.get('/pokemon/${request.name ?? request.id}');
    if (response.statusCode == 200) {
      return PokemonDetailsModel.fromJson(response.data).toEntity();
    } else {
      throw Exception(response);
    }
  }

  @override
  Future<PokemonSpeciesEntities> getPokemonSpecies(String name) async {
    final response = await apiService.get('pokemon-species/$name');
    if (response.statusCode == 200) {
      return PokemonSpeciesModel.fromJson(response.data).toEntity();
    } else {
      throw Exception(response);
    }
  }
}
