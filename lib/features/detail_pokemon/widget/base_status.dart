import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_flutter/core/core.dart';
import 'package:pokemon_flutter/core/extension/string_extension.dart';

class BaseStatusPokemonDetails extends StatelessWidget {
  const BaseStatusPokemonDetails({
    super.key,
    required this.data,
    required this.species,
  });

  final PokemonDetailsEntities data;
  final PokemonSpeciesEntities species;

  @override
  Widget build(BuildContext context) {
    final colors = data.colors ?? [TypePokemon.unknown.color];
    return Column(
      children: [
        Text(
          'Base Status',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: 16.h),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => Row(
            children: [
              Flexible(
                flex: 2,
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    (data.stats?[index].stat?.name ?? '')
                        .replaceAll('-', ' ')
                        .capitalizeFirst,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: LinearProgressIndicator(
                  value: (data.stats?[index].baseStat ?? 0).toDouble() / 100,
                  color: colors.first,
                  backgroundColor: Colors.grey.withOpacity(.35),
                ),
              ),
            ],
          ),
          separatorBuilder: (context, index) => SizedBox(height: 8.h),
          itemCount: (data.stats ?? []).length,
        ),
      ],
    );
  }
}
