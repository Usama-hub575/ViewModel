import 'package:flutter/material.dart';
import 'package:untitled1/screen2.dart';
import 'screen1.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context)=> MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,

    );

     final GoRouter _router = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
           Screen1(),
          routes: <GoRoute>[
            GoRoute(
              path: 'page2',
              builder: (BuildContext context, GoRouterState state) =>
             Screen2(),
            ),
          ],
        ),
      ],
    );
  }


