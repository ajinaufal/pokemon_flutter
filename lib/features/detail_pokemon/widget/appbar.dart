import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_flutter/core/core.dart';
import 'package:pokemon_flutter/core/extension/string_extension.dart';
import 'package:pokemon_flutter/features/detail_pokemon/widget/clippath.dart';

class CustomAppbarDetailPokemon extends StatelessWidget
    implements PreferredSizeWidget {
  final PokemonDetailsEntities data;
  const CustomAppbarDetailPokemon({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final colors = data.colors ?? [TypePokemon.unknown.color];
    final images = data.sprites?.other?.officialArtwork?.frontDefault;
    final name = data.name;
    final id = data.id ?? 0;
    return AppBar(
      title: const SizedBox(),
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: const SizedBox(),
      flexibleSpace: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 60.h),
              height: .26.sh,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: colors,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          context.canPop()
                              ? GestureDetector(
                                  onTap: () => context.pop(),
                                  child: Icon(
                                    Platform.isAndroid
                                        ? Icons.arrow_back_rounded
                                        : Icons.arrow_back_ios_new_rounded,
                                    color: Colors.white,
                                  ),
                                )
                              : const SizedBox(),
                          context.canPop()
                              ? SizedBox(width: 8.w)
                              : const SizedBox(),
                          Text(
                            (name ?? '').capitalizeFirst,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ],
                      ),
                      Text(
                        '# $id',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Colors.white,
                                ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CachedNetworkImage(
              imageUrl: images ?? '',
              width: 180.r,
              height: 180.r,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, .3.sh);
}
