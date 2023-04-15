import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pokemon_flutter/core/data/models/enums/pokemons_enums.dart';
import 'package:pokemon_flutter/core/data/models/request/request_pokemon_list.dart';
import 'package:pokemon_flutter/core/domain/entitites/pokemon_details_entities.dart';
import 'package:pokemon_flutter/core/helpers/string_helper.dart';
import 'package:pokemon_flutter/features/pokedex/provider/pokemon_list/pokemon_list_provider.dart';

class PokemonListView extends ConsumerStatefulWidget {
  const PokemonListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PokemonListViewState();
}

class _PokemonListViewState extends ConsumerState<PokemonListView> {
  @override
  void initState() {
    ref.read(pokemomListNotifier.notifier).getPokemonList(
          const RequestPokemonListModel(limit: 50, offset: 0),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(pokemomListNotifier);
    final details = ref.watch(pokemonListDetaisProvider);
    return Scaffold(
      body: state.when(
        initial: () => const SizedBox(),
        loading: () => const CircularProgressIndicator(),
        empty: () => const SizedBox(),
        success: (data) => buildSucces(details),
        error: (message) => const SizedBox(),
      ),
    );
  }

  Widget buildSucces(List<PokemonDetailsEntities> data) {
    return AlignedGridView.count(
      padding: EdgeInsets.all(16.r),
      itemCount: data.length,
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemBuilder: (context, index) => buildCard(data[index]),
    );
  }

  Widget buildCard(PokemonDetailsEntities data) {
    final image = data.sprites?.other?.officialArtwork?.frontDefault;
    final name = data.name;

    if (image == null) return const SizedBox();
    if (name == null) return const SizedBox();
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
          gradient: LinearGradient(
            colors: data.colors ?? TypePokemon.unknown.color,
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          color: Colors.red,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: CachedNetworkImage(
                imageUrl: image,
                width: 80.r,
                height: 80.r,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 12.h, left: 12.w),
                children: [
                  Text(
                    StringHelper().capitalize(word: name),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  SizedBox(height: 3.h),
                  buildTypes(data),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTypes(PokemonDetailsEntities data) {
    final type = data.types;
    if (type == null) return const SizedBox();
    return Wrap(
      direction: Axis.vertical,
      spacing: 4.h,
      children: List.generate(
        type.length,
        (index) => Container(
          padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 6.w),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(99.r)),
          ),
          child: Text(
            StringHelper().capitalize(
              word: describeEnum(
                type[index].type?.name ?? TypePokemon.unknown,
              ),
            ),
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
