import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_flutter/core/router/router_constant.dart';
import 'package:pokemon_flutter/core/router/router_observer.dart';
import 'package:pokemon_flutter/features/pokedex/view/pokemon_list_view.dart';

final routerProvider = Provider.autoDispose<GoRouter>((ref) {
  // final sub = ref.listen(routerNotifierProvider, (_, __) {});
  // ref.onDispose(sub.close);

  // final notifier = ref.read(routerNotifierProvider.notifier);

  return GoRouter(
    // refreshListenable: notifier,
    debugLogDiagnostics: true,
    initialLocation: RouterConstant.baseRouter.route,
    observers: [RouterObserver()],
    routes: routes,
    // redirect: notifier.redirect,
  );
});

List<GoRoute> get routes => [
      GoRoute(
        name: RouterConstant.baseRouter.name,
        path: RouterConstant.baseRouter.route,
        builder: (context, state) => const PokemonListView(),
      ),
    ];
