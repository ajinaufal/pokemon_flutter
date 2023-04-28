import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pokemon_flutter/core/data/models/enums/pokemons_enums.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_details_entities.dart';
import 'package:pokemon_flutter/core/helpers/string_helper.dart';
import 'package:pokemon_flutter/features/pokedex/provider/pokemon_list/pokemon_list_provider.dart';
import 'package:pokemon_flutter/features/pokedex/widget/box_pokemon.dart';

class PokemonListView extends ConsumerStatefulWidget {
  const PokemonListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PokemonListViewState();
}

class _PokemonListViewState extends ConsumerState<PokemonListView> {
  final _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    ref.read(pokemomListNotifier.notifier).getPokemonList();
    _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(pokemomListNotifier);
    return Scaffold(
      body: state.when(
        initial: () => const SizedBox(),
        loading: () =>
            const Center(child: CircularProgressIndicator(color: Colors.black)),
        empty: () => const SizedBox(),
        success: (data) => buildSucces(data),
        error: (message) => const SizedBox(),
      ),
    );
  }

  Widget buildSucces(List<PokemonDetailsEntities> data) {
    return AlignedGridView.count(
      controller: _scrollController,
      padding: EdgeInsets.all(16.r),
      itemCount: data.length,
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemBuilder: (context, index) => BoxPokemon(data: data[index]),
    );
  }

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      ref.read(indexListProvider.notifier).state++;
      ref.read(pokemomListNotifier.notifier).pokemonListStarted();
    }
  }
}
