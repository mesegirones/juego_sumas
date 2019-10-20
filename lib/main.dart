import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/level.dart';
import './screens/main_screen.dart';
import './screens/operation_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Levels(),
        ),
      ],
      child: MaterialApp(
        title: 'Juego sumas',
        home: MainScreen(),
        routes: {
          OperationScreen.routeName: (ctx) => OperationScreen(),
          MainScreen.routName: (ctx) => MainScreen(),
        },
      ),
    );
  }
}
