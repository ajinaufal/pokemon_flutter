import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_flutter/core/core.dart';

class AbilitiesPokemonDetails extends StatelessWidget {
  const AbilitiesPokemonDetails({
    super.key,
    required this.data,
  });

  final PokemonDetailsEntities data;

  @override
  Widget build(BuildContext context) {
    final abilities = data.abilities ?? [];
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: SizedBox(
            width: 1.sw,
            child: Text(
              'Abilities',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
        Flexible(
          flex: 4,
          child: Text(
            abilities
                .map((e) => (e.ability?.name ?? '').replaceAll('-', ' '))
                .toList()
                .join(', '),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
