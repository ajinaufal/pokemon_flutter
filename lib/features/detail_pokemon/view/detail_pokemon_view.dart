import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_flutter/core/core.dart';
import 'package:pokemon_flutter/features/detail_pokemon/provider/pokemon_species/notifier/pokemon_species_notifier.dart';
import 'package:pokemon_flutter/features/detail_pokemon/widget/abilities.dart';
import 'package:pokemon_flutter/features/detail_pokemon/widget/appbar.dart';
import 'package:pokemon_flutter/features/detail_pokemon/widget/base_status.dart';
import 'package:pokemon_flutter/features/detail_pokemon/widget/clipper_types.dart';
import 'package:pokemon_flutter/features/detail_pokemon/widget/physical_information.dart';

class DetailsPokemonView extends ConsumerStatefulWidget {
  const DetailsPokemonView({
    super.key,
    required this.argument,
  });

  final PokemonDetailsEntities argument;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DetailsPokemonViewState();
}

class _DetailsPokemonViewState extends ConsumerState<DetailsPokemonView> {
  @override
  void initState() {
    super.initState();
    ref
        .read(pokemonSpeciesNotifier.notifier)
        .getPokemonSpecies(widget.argument.name ?? '');
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(pokemonSpeciesNotifier);
    return Scaffold(
      appBar: state.whenOrNull(
        success: (data) => CustomAppbarDetailPokemon(
          data: widget.argument,
        ),
      ),
      body: state.whenOrNull(
        error: (message) => const SizedBox(),
        loading: () => const Center(
          child: CircularProgressIndicator(color: Colors.black),
        ),
        success: (data) => ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
          children: [
            ClipperTypesPokemon(data: widget.argument),
            SizedBox(height: 16.h),
            PhysicalInformation(
              data: widget.argument,
              species: data,
            ),
            SizedBox(height: 16.h),
            BaseStatusPokemonDetails(
              data: widget.argument,
              species: data,
            ),
            SizedBox(height: 16.h),
            AbilitiesPokemonDetails(data: widget.argument)
          ],
        ),
      ),
    );
  }
}
