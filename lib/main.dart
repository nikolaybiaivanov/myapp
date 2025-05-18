import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/base/extensions.dart';
import 'package:myapp/base/helpers.dart';
import 'package:myapp/base/service_locator/service_locator.dart';
import 'package:myapp/blocs/home/home_bloc.dart';
import 'package:myapp/blocs/recipe/recipe_bloc.dart';
import 'package:myapp/features/common/error_screen.dart';
import 'package:myapp/features/feature_home/views/home_screen.dart';
import 'package:myapp/features/feature_recipe/views/recipe_screen.dart';

void main() {
  ServiceLocator.setUp();

  runApp(const RecipesApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen().createWithProvider(
          (context) => get<HomeBloc>(),
        );
      },
    ),
    GoRoute(
      path: '/recipe/:id',
      name: 'recipe',
      builder: (context, state) {
        final id = int.tryParse(state.pathParameters['id'] ?? '');
        if (id == null) {
          return const ErrorScreen();
        }

        return RecipeScreen(
          id: id,
        ).createWithProvider((context) => get<RecipeBloc>());
      },
    ),
  ],
);

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: context.locale.recipesApp,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: _router,
    );
  }
}
