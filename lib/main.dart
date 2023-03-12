import 'package:flutter/material.dart';
import 'package:structure/core/ioc/global.dart';
import 'package:structure/core/navigator/iflutter_navigator.dart';
import 'package:structure/features/app/presentation/home/view/home_page.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      navigatorKey: getIt<IFlutterNavigator>().navigatorKey,
    );
  }
}
