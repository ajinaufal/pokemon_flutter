import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_flutter/core/core.dart';
import 'package:pokemon_flutter/core/extension/string_extension.dart';

class PhysicalInformation extends StatelessWidget {
  final PokemonDetailsEntities data;
  final PokemonSpeciesEntities species;

  const PhysicalInformation({
    super.key,
    required this.data,
    required this.species,
  });

  @override
  Widget build(BuildContext context) {
    final colors = data.colors ?? [TypePokemon.unknown.color];
    final height = data.height ?? 0;
    final weight = data.weight ?? 0;
    final eggGroup = species.eggGroups?.last.name ?? '';
    return Container(
      constraints: BoxConstraints(maxWidth: 200.w),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Column(
              children: [
                Text(
                  eggGroup.capitalizeFirst,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: colors.first,
                      ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Egg Group',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
          ),
          Container(
            height: 35.h,
            width: 1.2.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          Flexible(
            child: Column(
              children: [
                Text(
                  '${((height * 10) / 100)} M',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: colors.first,
                      ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Height',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
          ),
          Container(
            height: 35.h,
            width: 1.2.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          Flexible(
            child: Column(
              children: [
                Text(
                  '${weight / 10} KG',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: colors.first,
                      ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Weight',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
