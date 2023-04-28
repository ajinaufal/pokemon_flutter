import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_flutter/core/core.dart';

class BoxPokemon extends StatelessWidget {
  const BoxPokemon({
    super.key,
    required this.data,
    this.colors,
  });

  final List<Color>? colors;
  final PokemonDetailsEntities data;

  @override
  Widget build(BuildContext context) {
    final image = data.sprites?.other?.officialArtwork?.frontDefault;
    final name = data.name;
    final colors = data.colors;

    if (image == null) return const SizedBox();
    if (name == null) return const SizedBox();

    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
          gradient: LinearGradient(
            colors: colors ?? TypePokemon.unknown.color,
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
                  buildTypes(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTypes(BuildContext context) {
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
