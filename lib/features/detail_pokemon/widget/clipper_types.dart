import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_flutter/core/core.dart';
import 'package:pokemon_flutter/core/extension/string_extension.dart';

class ClipperTypesPokemon extends StatelessWidget {
  final PokemonDetailsEntities data;

  const ClipperTypesPokemon({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final types = data.types ?? [];
    return Wrap(
      spacing: 8.w,
      alignment: WrapAlignment.center,
      children: List.generate(types.length, (index) {
        var nameType =
            describeEnum(types[index].type?.name ?? TypePokemon.unknown);
        var colorType = (types[index].type?.name ?? TypePokemon.unknown).color;
        return Container(
          width: 100.w,
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: colorType,
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
          ),
          child: Text(
            nameType.capitalizeFirst,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        );
      }),
    );
  }
}
