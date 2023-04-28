import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_flutter/core/router/router_constant.dart';
import 'package:pokemon_flutter/core/router/router_observer.dart';
import 'package:pokemon_flutter/features/pokedex/view/pokemon_list_view.dart';

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
        name: RouterConstant.baseRouter.name,
        path: RouterConstant.baseRouter.route,
        builder: (context, state) => const PokemonListView(),
      ),
    ];
