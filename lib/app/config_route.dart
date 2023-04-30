import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_flutter/core/core.dart';
import 'package:pokemon_flutter/features/features.dart';

final routeNavigatorKey = GlobalKey<NavigatorState>();
final routerProvider = Provider.autoDispose<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: routeNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: RouterConstant.baseRouter.route,
    observers: [RouterObserver()],
    routes: routes,
  );
});

List<GoRoute> get routes => [
      GoRoute(
        parentNavigatorKey: routeNavigatorKey,
        name: RouterConstant.baseRouter.name,
        path: RouterConstant.baseRouter.route,
        builder: (context, state) => const PokemonListView(),
      ),
      GoRoute(
        parentNavigatorKey: routeNavigatorKey,
        path: RouterConstant.detailRouter.route,
        name: RouterConstant.detailRouter.name,
        builder: (context, state) {
          PokemonDetailsEntities argument =
              state.extra as PokemonDetailsEntities;
          return DetailPokemonView(argument: argument);
        },
      )
    ];
