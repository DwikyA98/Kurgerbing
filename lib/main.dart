import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './bloc/listTileColorBloc.dart';
import 'bloc/cartlistBloc.dart';
import 'screens/Login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        //add yours BLoCs controlles
        Bloc((i) => CartListBloc()),
        Bloc((i) => ColorBloc()),
      ],
      dependencies: [],
      child: MaterialApp(
        title: "Food Delivery",
        home: LoginScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
