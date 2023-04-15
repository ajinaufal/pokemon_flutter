// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_pokemon_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestPokemonListModel _$$_RequestPokemonListModelFromJson(
        Map<String, dynamic> json) =>
    _$_RequestPokemonListModel(
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
      type: json['type'] as int?,
    );

Map<String, dynamic> _$$_RequestPokemonListModelToJson(
    _$_RequestPokemonListModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('limit', instance.limit);
  writeNotNull('offset', instance.offset);
  writeNotNull('type', instance.type);
  return val;
}
