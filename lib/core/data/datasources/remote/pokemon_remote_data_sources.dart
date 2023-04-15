import 'package:pokemon_flutter/core/data/models/request/request_pokemon_details.dart';
import 'package:pokemon_flutter/core/data/models/request/request_pokemon_list.dart';
import 'package:pokemon_flutter/core/data/models/response/pokemon_details_model.dart';
import 'package:pokemon_flutter/core/data/models/response/pokemon_list_model.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_details_entities.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_list_entities.dart';
import 'package:pokemon_flutter/core/services/api_service.dart';

abstract class PokemonRemoteDataSource {
  Future<PokemonListEntities> getPokemonList(RequestPokemonListModel request);
  Future<PokemonDetailsEntities> getPokemonDetails(
    RequestPokemonDetailsModel request,
  );
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
}
