// main.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screen/details_page.dart';
import 'screen/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GoRouter goRouter = GoRouter(
    initialLocation: '/',
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        name: '/',
        path: '/',
        builder: (context, state) {
          return HomePage();
        },
      ),
      GoRoute(
        name: '/details',
        path: '/details',
        builder: (context, state) {
          final arguments = state.pathParameters as Map<String, dynamic>;
          return DetailsPage(
            destination: arguments['destination'] ?? '',
            image: arguments['image'] ?? '',
          );
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Travel Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
    );
  }
}
