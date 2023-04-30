import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_flutter/core/core.dart';
import 'package:pokemon_flutter/features/detail_pokemon/widget/clippath.dart';

class DetailPokemonView extends StatefulWidget {
  const DetailPokemonView({
    super.key,
    required this.argument,
  });

  final PokemonDetailsEntities argument;

  @override
  State<DetailPokemonView> createState() => _DetailPokemonViewState();
}

class _DetailPokemonViewState extends State<DetailPokemonView> {
  @override
  Widget build(BuildContext context) {
    final colors = widget.argument.colors ?? [TypePokemon.unknown.color];
    final images =
        widget.argument.sprites?.other?.officialArtwork?.frontDefault;
    final name = widget.argument.name;
    final id = widget.argument.id ?? 0;
    final types = widget.argument.types ?? [];

    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(),
        toolbarHeight: .3.sh,
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
                              (name ?? '').toUpperCase(),
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
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          bottom: 16.h,
        ),
        children: [
          Wrap(
            spacing: 8.w,
            alignment: WrapAlignment.center,
            children: List.generate(types.length, (index) {
              var nameType =
                  describeEnum(types[index].type?.name ?? TypePokemon.unknown);
              var colorType =
                  (types[index].type?.name ?? TypePokemon.unknown).color;
              return Container(
                width: 100.w,
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: colorType,
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                ),
                child: Text(
                  nameType,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
