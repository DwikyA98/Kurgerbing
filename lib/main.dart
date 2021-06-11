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
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Center(
            child: Text('Could not load app'),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return BlocProvider(
            blocs: [
              //add yours BLoCs controlles
              Bloc((i) => CartListBloc()),
              Bloc((i) => ColorBloc()),
            ],
            dependencies: [],
            child: MaterialApp(
              title: "Food Delivery",
              theme: ThemeData(
                  primaryColor: Colors.yellow,
                  primarySwatch: Colors.yellow,
                  inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(color: Colors.grey)),
                  backgroundColor: Colors.white),
              home: LoginScreen(),
              debugShowCheckedModeBanner: false,
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(
                    backgroundColor: Theme.of(context).primaryColor,
                  )
                ],
              )
            ]);
      },
    );
  }
}
