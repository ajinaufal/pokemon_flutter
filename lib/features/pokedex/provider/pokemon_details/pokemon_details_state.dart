part of 'pokemon_details_notifier.dart';

abstract class PokemonDetailsState extends Equatable {
  const PokemonDetailsState();

  @override
  List<Object?> get props => <Object>[];
}

class PokemonDetailsInitialState extends PokemonDetailsState {
  const PokemonDetailsInitialState();
}
