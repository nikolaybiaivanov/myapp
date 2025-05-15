import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/base/extensions.dart';
import 'package:myapp/base/helpers.dart';
import 'package:myapp/base/service_locator/service_locator.dart';
import 'package:myapp/blocs/home/home_bloc.dart';
import 'package:myapp/features/feature_home/views/home_page.dart';

void main() {
  ServiceLocator.setUp();

  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage()
            .createWithProvider((context) => get<HomeBloc>());
      },
    ),
  ],
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: _router,
    );
  }
}
