// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDetailsModel _$$_PokemonDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsModel(
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) =>
              PokemonDetailsAbilityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseExperience: json['base_experience'] as int?,
      forms: (json['forms'] as List<dynamic>?)
          ?.map((e) =>
              PokemonDetailsSpeciesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (json['game_indices'] as List<dynamic>?)
          ?.map((e) =>
              PokemonDetailsGameIndexModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: json['height'] as int?,
      heldItems: (json['held_items'] as List<dynamic>?)
          ?.map((e) =>
              PokemonDetailsHeldItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      isDefault: json['is_default'] as bool?,
      locationAreaEncounters: json['location_area_encounters'] as String?,
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) =>
              PokemonDetailsMoveModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      order: json['order'] as int?,
      pastTypes: (json['past_types'] as List<dynamic>?)
          ?.map((e) =>
              PokemonDetailsPastTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      species: json['species'] == null
          ? null
          : PokemonDetailsSpeciesModel.fromJson(
              json['species'] as Map<String, dynamic>),
      sprites: json['sprites'] == null
          ? null
          : PokemonDetailsSpritesModel.fromJson(
              json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) =>
              PokemonDetailsStatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) =>
              PokemonDetailsTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$$_PokemonDetailsModelToJson(
    _$_PokemonDetailsModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('abilities', instance.abilities);
  writeNotNull('base_experience', instance.baseExperience);
  writeNotNull('forms', instance.forms);
  writeNotNull('game_indices', instance.gameIndices);
  writeNotNull('height', instance.height);
  writeNotNull('held_items', instance.heldItems);
  writeNotNull('id', instance.id);
  writeNotNull('is_default', instance.isDefault);
  writeNotNull('location_area_encounters', instance.locationAreaEncounters);
  writeNotNull('moves', instance.moves);
  writeNotNull('name', instance.name);
  writeNotNull('order', instance.order);
  writeNotNull('past_types', instance.pastTypes);
  writeNotNull('species', instance.species);
  writeNotNull('sprites', instance.sprites);
  writeNotNull('stats', instance.stats);
  writeNotNull('types', instance.types);
  writeNotNull('weight', instance.weight);
  return val;
}

_$_PokemonDetailsPastTypeModel _$$_PokemonDetailsPastTypeModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsPastTypeModel(
      generation: json['generation'] == null
          ? null
          : PokemonDetailsSpeciesModel.fromJson(
              json['generation'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) =>
              PokemonDetailsTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonDetailsPastTypeModelToJson(
    _$_PokemonDetailsPastTypeModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('generation', instance.generation);
  writeNotNull('types', instance.types);
  return val;
}

_$_PokemonDetailsHeldItemModel _$$_PokemonDetailsHeldItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsHeldItemModel(
      item: json['item'] == null
          ? null
          : PokemonDetailsSpeciesModel.fromJson(
              json['item'] as Map<String, dynamic>),
      versionDetails: (json['version_details'] as List<dynamic>?)
          ?.map((e) => PokemonDetailsVersionDetailModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonDetailsHeldItemModelToJson(
    _$_PokemonDetailsHeldItemModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item', instance.item);
  writeNotNull('version_details', instance.versionDetails);
  return val;
}

_$_PokemonDetailsVersionDetailModel
    _$$_PokemonDetailsVersionDetailModelFromJson(Map<String, dynamic> json) =>
        _$_PokemonDetailsVersionDetailModel(
          rarity: json['rarity'] as int?,
          version: json['version'] == null
              ? null
              : PokemonDetailsSpeciesModel.fromJson(
                  json['version'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_PokemonDetailsVersionDetailModelToJson(
    _$_PokemonDetailsVersionDetailModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rarity', instance.rarity);
  writeNotNull('version', instance.version);
  return val;
}

_$_PokemonDetailsAbilityModel _$$_PokemonDetailsAbilityModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsAbilityModel(
      ability: json['ability'] == null
          ? null
          : PokemonDetailsSpeciesModel.fromJson(
              json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool?,
      slot: json['slot'] as int?,
    );

Map<String, dynamic> _$$_PokemonDetailsAbilityModelToJson(
    _$_PokemonDetailsAbilityModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ability', instance.ability);
  writeNotNull('is_hidden', instance.isHidden);
  writeNotNull('slot', instance.slot);
  return val;
}

_$_PokemonDetailsSpeciesModel _$$_PokemonDetailsSpeciesModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsSpeciesModel(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PokemonDetailsSpeciesModelToJson(
    _$_PokemonDetailsSpeciesModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('url', instance.url);
  return val;
}

_$_PokemonDetailsGameIndexModel _$$_PokemonDetailsGameIndexModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsGameIndexModel(
      gameIndex: json['game_index'] as int?,
      version: json['version'] == null
          ? null
          : PokemonDetailsSpeciesModel.fromJson(
              json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonDetailsGameIndexModelToJson(
    _$_PokemonDetailsGameIndexModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('game_index', instance.gameIndex);
  writeNotNull('version', instance.version);
  return val;
}

_$_PokemonDetailsMoveModel _$$_PokemonDetailsMoveModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsMoveModel(
      move: json['move'] == null
          ? null
          : PokemonDetailsSpeciesModel.fromJson(
              json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['version_group_details'] as List<dynamic>?)
          ?.map((e) => PokemonDetailsVersionGroupDetailModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonDetailsMoveModelToJson(
    _$_PokemonDetailsMoveModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('move', instance.move);
  writeNotNull('version_group_details', instance.versionGroupDetails);
  return val;
}

_$_PokemonDetailsVersionGroupDetailModel
    _$$_PokemonDetailsVersionGroupDetailModelFromJson(
            Map<String, dynamic> json) =>
        _$_PokemonDetailsVersionGroupDetailModel(
          levelLearnedAt: json['level_learned_at'] as int?,
          moveLearnMethod: json['move_learn_method'] == null
              ? null
              : PokemonDetailsSpeciesModel.fromJson(
                  json['move_learn_method'] as Map<String, dynamic>),
          versionGroup: json['version_group'] == null
              ? null
              : PokemonDetailsSpeciesModel.fromJson(
                  json['version_group'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_PokemonDetailsVersionGroupDetailModelToJson(
    _$_PokemonDetailsVersionGroupDetailModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('level_learned_at', instance.levelLearnedAt);
  writeNotNull('move_learn_method', instance.moveLearnMethod);
  writeNotNull('version_group', instance.versionGroup);
  return val;
}

_$_PokemonDetailsGenerationVModel _$$_PokemonDetailsGenerationVModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsGenerationVModel(
      blackWhite: json['black_white'] == null
          ? null
          : PokemonDetailsSpritesModel.fromJson(
              json['black_white'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonDetailsGenerationVModelToJson(
    _$_PokemonDetailsGenerationVModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('black_white', instance.blackWhite);
  return val;
}

_$_PokemonDetailsGenerationIvModel _$$_PokemonDetailsGenerationIvModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsGenerationIvModel(
      diamondPearl: json['diamond_pearl'] == null
          ? null
          : PokemonDetailsSpritesModel.fromJson(
              json['diamond_pearl'] as Map<String, dynamic>),
      heartgoldSoulsilver: json['heartgold_soulsilver'] == null
          ? null
          : PokemonDetailsSpritesModel.fromJson(
              json['heartgold_soulsilver'] as Map<String, dynamic>),
      platinum: json['platinum'] == null
          ? null
          : PokemonDetailsSpritesModel.fromJson(
              json['platinum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonDetailsGenerationIvModelToJson(
    _$_PokemonDetailsGenerationIvModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('diamond_pearl', instance.diamondPearl);
  writeNotNull('heartgold_soulsilver', instance.heartgoldSoulsilver);
  writeNotNull('platinum', instance.platinum);
  return val;
}

_$_Versions _$$_VersionsFromJson(Map<String, dynamic> json) => _$_Versions(
      generationI: json['generation_i'] == null
          ? null
          : PokemonDetailsGenerationIModel.fromJson(
              json['generation_i'] as Map<String, dynamic>),
      generationIi: json['generation_ii'] == null
          ? null
          : PokemonDetailsGenerationIiModel.fromJson(
              json['generation_ii'] as Map<String, dynamic>),
      generationIii: json['generation_iii'] == null
          ? null
          : PokemonDetailsGenerationIiiModel.fromJson(
              json['generation_iii'] as Map<String, dynamic>),
      generationIv: json['generation_iv'] == null
          ? null
          : PokemonDetailsGenerationIvModel.fromJson(
              json['generation_iv'] as Map<String, dynamic>),
      generationV: json['generation_v'] == null
          ? null
          : PokemonDetailsGenerationVModel.fromJson(
              json['generation_v'] as Map<String, dynamic>),
      generationVi: (json['generation_vi'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, PokemonDetailsHomeModel.fromJson(e as Map<String, dynamic>)),
      ),
      generationVii: json['generation_vii'] == null
          ? null
          : PokemonDetailsGenerationViiModel.fromJson(
              json['generation_vii'] as Map<String, dynamic>),
      generationViii: json['generation_viii'] == null
          ? null
          : PokemonDetailsGenerationViiiModel.fromJson(
              json['generation_viii'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VersionsToJson(_$_Versions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('generation_i', instance.generationI);
  writeNotNull('generation_ii', instance.generationIi);
  writeNotNull('generation_iii', instance.generationIii);
  writeNotNull('generation_iv', instance.generationIv);
  writeNotNull('generation_v', instance.generationV);
  writeNotNull('generation_vi', instance.generationVi);
  writeNotNull('generation_vii', instance.generationVii);
  writeNotNull('generation_viii', instance.generationViii);
  return val;
}

_$_Sprites _$$_SpritesFromJson(Map<String, dynamic> json) => _$_Sprites(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
      other: json['other'] == null
          ? null
          : PokemonDetailsOtherModel.fromJson(
              json['other'] as Map<String, dynamic>),
      versions: json['versions'] == null
          ? null
          : PokemonDetailsVersionsModel.fromJson(
              json['versions'] as Map<String, dynamic>),
      animated: json['animated'] == null
          ? null
          : PokemonDetailsSpritesModel.fromJson(
              json['animated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SpritesToJson(_$_Sprites instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('back_default', instance.backDefault);
  writeNotNull('back_female', instance.backFemale);
  writeNotNull('back_shiny', instance.backShiny);
  writeNotNull('back_shiny_female', instance.backShinyFemale);
  writeNotNull('front_default', instance.frontDefault);
  writeNotNull('front_female', instance.frontFemale);
  writeNotNull('front_shiny', instance.frontShiny);
  writeNotNull('front_shiny_female', instance.frontShinyFemale);
  writeNotNull('other', instance.other);
  writeNotNull('versions', instance.versions);
  writeNotNull('animated', instance.animated);
  return val;
}

_$_GenerationI _$$_GenerationIFromJson(Map<String, dynamic> json) =>
    _$_GenerationI(
      redBlue: json['red_blue'] == null
          ? null
          : PokemonDetailsRedBlueModel.fromJson(
              json['red_blue'] as Map<String, dynamic>),
      yellow: json['yellow'] == null
          ? null
          : PokemonDetailsRedBlueModel.fromJson(
              json['yellow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GenerationIToJson(_$_GenerationI instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('red_blue', instance.redBlue);
  writeNotNull('yellow', instance.yellow);
  return val;
}

_$_PokemonDetailsRedBlueModel _$$_PokemonDetailsRedBlueModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsRedBlueModel(
      backDefault: json['back_default'] as String?,
      backGray: json['back_gray'] as String?,
      backTransparent: json['back_transparent'] as String?,
      frontDefault: json['front_default'] as String?,
      frontGray: json['front_gray'] as String?,
      frontTransparent: json['front_transparent'] as String?,
    );

Map<String, dynamic> _$$_PokemonDetailsRedBlueModelToJson(
    _$_PokemonDetailsRedBlueModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('back_default', instance.backDefault);
  writeNotNull('back_gray', instance.backGray);
  writeNotNull('back_transparent', instance.backTransparent);
  writeNotNull('front_default', instance.frontDefault);
  writeNotNull('front_gray', instance.frontGray);
  writeNotNull('front_transparent', instance.frontTransparent);
  return val;
}

_$_GenerationIi _$$_GenerationIiFromJson(Map<String, dynamic> json) =>
    _$_GenerationIi(
      crystal: json['crystal'] == null
          ? null
          : PokemonDetailsCrystalModel.fromJson(
              json['crystal'] as Map<String, dynamic>),
      gold: json['gold'] == null
          ? null
          : PokemonDetailsGoldModel.fromJson(
              json['gold'] as Map<String, dynamic>),
      silver: json['silver'] == null
          ? null
          : PokemonDetailsGoldModel.fromJson(
              json['silver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GenerationIiToJson(_$_GenerationIi instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('crystal', instance.crystal);
  writeNotNull('gold', instance.gold);
  writeNotNull('silver', instance.silver);
  return val;
}

_$_PokemonDetailsCrystalModel _$$_PokemonDetailsCrystalModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsCrystalModel(
      backDefault: json['back_default'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyTransparent: json['back_shiny_transparent'] as String?,
      backTransparent: json['back_transparent'] as String?,
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyTransparent: json['front_shiny_transparent'] as String?,
      frontTransparent: json['front_transparent'] as String?,
    );

Map<String, dynamic> _$$_PokemonDetailsCrystalModelToJson(
    _$_PokemonDetailsCrystalModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('back_default', instance.backDefault);
  writeNotNull('back_shiny', instance.backShiny);
  writeNotNull('back_shiny_transparent', instance.backShinyTransparent);
  writeNotNull('back_transparent', instance.backTransparent);
  writeNotNull('front_default', instance.frontDefault);
  writeNotNull('front_shiny', instance.frontShiny);
  writeNotNull('front_shiny_transparent', instance.frontShinyTransparent);
  writeNotNull('front_transparent', instance.frontTransparent);
  return val;
}

_$_PokemonDetailsGoldModel _$$_PokemonDetailsGoldModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsGoldModel(
      backDefault: json['back_default'] as String?,
      backShiny: json['back_shiny'] as String?,
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontTransparent: json['front_transparent'] as String?,
    );

Map<String, dynamic> _$$_PokemonDetailsGoldModelToJson(
    _$_PokemonDetailsGoldModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('back_default', instance.backDefault);
  writeNotNull('back_shiny', instance.backShiny);
  writeNotNull('front_default', instance.frontDefault);
  writeNotNull('front_shiny', instance.frontShiny);
  writeNotNull('front_transparent', instance.frontTransparent);
  return val;
}

_$_PokemonDetailsGenerationIiiModel
    _$$_PokemonDetailsGenerationIiiModelFromJson(Map<String, dynamic> json) =>
        _$_PokemonDetailsGenerationIiiModel(
          emerald: json['emerald'] == null
              ? null
              : PokemonDetailsOfficialArtworkModel.fromJson(
                  json['emerald'] as Map<String, dynamic>),
          fireredLeafgreen: json['firered_leafgreen'] == null
              ? null
              : PokemonDetailsGoldModel.fromJson(
                  json['firered_leafgreen'] as Map<String, dynamic>),
          rubySapphire: json['ruby_sapphire'] == null
              ? null
              : PokemonDetailsGoldModel.fromJson(
                  json['ruby_sapphire'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_PokemonDetailsGenerationIiiModelToJson(
    _$_PokemonDetailsGenerationIiiModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('emerald', instance.emerald);
  writeNotNull('firered_leafgreen', instance.fireredLeafgreen);
  writeNotNull('ruby_sapphire', instance.rubySapphire);
  return val;
}

_$_PokemonDetailsOfficialArtworkModel
    _$$_PokemonDetailsOfficialArtworkModelFromJson(Map<String, dynamic> json) =>
        _$_PokemonDetailsOfficialArtworkModel(
          frontDefault: json['front_default'] as String?,
          frontShiny: json['front_shiny'] as String?,
        );

Map<String, dynamic> _$$_PokemonDetailsOfficialArtworkModelToJson(
    _$_PokemonDetailsOfficialArtworkModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('front_default', instance.frontDefault);
  writeNotNull('front_shiny', instance.frontShiny);
  return val;
}

_$_PokemonDetailsHomeModel _$$_PokemonDetailsHomeModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsHomeModel(
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$$_PokemonDetailsHomeModelToJson(
    _$_PokemonDetailsHomeModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('front_default', instance.frontDefault);
  writeNotNull('front_female', instance.frontFemale);
  writeNotNull('front_shiny', instance.frontShiny);
  writeNotNull('front_shiny_female', instance.frontShinyFemale);
  return val;
}

_$_GenerationVii _$$_GenerationViiFromJson(Map<String, dynamic> json) =>
    _$_GenerationVii(
      icons: json['icons'] == null
          ? null
          : PokemonDetailsDreamWorldModel.fromJson(
              json['icons'] as Map<String, dynamic>),
      ultraSunUltraMoon: json['ultra_sun_ultra_moon'] == null
          ? null
          : PokemonDetailsHomeModel.fromJson(
              json['ultra_sun_ultra_moon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GenerationViiToJson(_$_GenerationVii instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('icons', instance.icons);
  writeNotNull('ultra_sun_ultra_moon', instance.ultraSunUltraMoon);
  return val;
}

_$_PokemonDetailsDreamWorldModel _$$_PokemonDetailsDreamWorldModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsDreamWorldModel(
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
    );

Map<String, dynamic> _$$_PokemonDetailsDreamWorldModelToJson(
    _$_PokemonDetailsDreamWorldModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('front_default', instance.frontDefault);
  writeNotNull('front_female', instance.frontFemale);
  return val;
}

_$_PokemonDetailsGenerationViiiModel
    _$$_PokemonDetailsGenerationViiiModelFromJson(Map<String, dynamic> json) =>
        _$_PokemonDetailsGenerationViiiModel(
          icons: json['icons'] == null
              ? null
              : PokemonDetailsDreamWorldModel.fromJson(
                  json['icons'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_PokemonDetailsGenerationViiiModelToJson(
    _$_PokemonDetailsGenerationViiiModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('icons', instance.icons);
  return val;
}

_$_PokemonDetailsOtherModel _$$_PokemonDetailsOtherModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsOtherModel(
      dreamWorld: json['dream_world'] == null
          ? null
          : PokemonDetailsDreamWorldModel.fromJson(
              json['dream_world'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : PokemonDetailsHomeModel.fromJson(
              json['home'] as Map<String, dynamic>),
      officialArtwork: json['official-artwork'] == null
          ? null
          : PokemonDetailsOfficialArtworkModel.fromJson(
              json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonDetailsOtherModelToJson(
    _$_PokemonDetailsOtherModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dream_world', instance.dreamWorld);
  writeNotNull('home', instance.home);
  writeNotNull('official-artwork', instance.officialArtwork);
  return val;
}

_$_Stat _$$_StatFromJson(Map<String, dynamic> json) => _$_Stat(
      baseStat: json['base_stat'] as int?,
      effort: json['effort'] as int?,
      stat: json['stat'] == null
          ? null
          : PokemonDetailsSpeciesModel.fromJson(
              json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatToJson(_$_Stat instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('base_stat', instance.baseStat);
  writeNotNull('effort', instance.effort);
  writeNotNull('stat', instance.stat);
  return val;
}

_$_PokemonDetailsTypeModel _$$_PokemonDetailsTypeModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsTypeModel(
      slot: json['slot'] as int?,
      type: json['type'] == null
          ? null
          : PokemonDetailsElementsModel.fromJson(
              json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonDetailsTypeModelToJson(
    _$_PokemonDetailsTypeModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('slot', instance.slot);
  writeNotNull('type', instance.type);
  return val;
}

_$_PokemonDetailsElementModel _$$_PokemonDetailsElementModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailsElementModel(
      name: $enumDecodeNullable(_$TypePokemonEnumMap, json['name']),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PokemonDetailsElementModelToJson(
    _$_PokemonDetailsElementModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', _$TypePokemonEnumMap[instance.name]);
  writeNotNull('url', instance.url);
  return val;
}

const _$TypePokemonEnumMap = {
  TypePokemon.normal: 'normal',
  TypePokemon.fighting: 'fighting',
  TypePokemon.flying: 'flying',
  TypePokemon.poison: 'poison',
  TypePokemon.ground: 'ground',
  TypePokemon.rock: 'rock',
  TypePokemon.bug: 'bug',
  TypePokemon.ghost: 'ghost',
  TypePokemon.steel: 'steel',
  TypePokemon.fire: 'fire',
  TypePokemon.water: 'water',
  TypePokemon.grass: 'grass',
  TypePokemon.electric: 'electric',
  TypePokemon.psychic: 'psychic',
  TypePokemon.ice: 'ice',
  TypePokemon.dragon: 'dragon',
  TypePokemon.dark: 'dark',
  TypePokemon.fairy: 'fairy',
  TypePokemon.unknown: 'unknown',
  TypePokemon.shadow: 'shadow',
};
