import 'package:pokemon_flutter/core/data/models/route/route_model.dart';

class RouterConstant {
  static const GoRouterModel baseRouter = GoRouterModel(
    name: 'base',
    route: '/',
  );
  static const GoRouterModel detailRouter = GoRouterModel(
    name: 'details',
    route: '/details',
  );
}
