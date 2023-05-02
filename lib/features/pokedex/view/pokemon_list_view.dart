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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Pokedex',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        toolbarHeight: 50.h,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: state.whenOrNull(
        loading: () =>
            const Center(child: CircularProgressIndicator(color: Colors.black)),
        empty: () => const SizedBox(),
        success: (data) => buildSucces(data),
        error: (message) => const SizedBox(),
      ),
    );
  }

  Widget buildSucces(List<PokemonDetailsEntities> data) {
    return ListView(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
      shrinkWrap: true,
      children: [
        // TextField(
        //   maxLines: 1,
        //   decoration: InputDecoration(
        //       border: OutlineInputBorder(
        //         borderSide: BorderSide.none,
        //         borderRadius: BorderRadius.circular(50),
        //       ),
        //       enabledBorder: OutlineInputBorder(
        //         borderSide: BorderSide.none,
        //         borderRadius: BorderRadius.circular(50),
        //       ),
        //       fillColor: Colors.grey.shade200,
        //       filled: true,
        //       hintText: "Name or Number",
        //       contentPadding:
        //           EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w)),
        // ),
        // SizedBox(height: 16.h),
        AlignedGridView.count(
          shrinkWrap: true,
          controller: _scrollController,
          itemCount: data.length,
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemBuilder: (context, index) => BoxPokemon(data: data[index]),
        ),
      ],
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
