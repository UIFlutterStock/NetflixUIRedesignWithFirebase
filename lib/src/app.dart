import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'infra/Mock.dart';
import 'pages/home/home.page.dart';
import 'provider/bloc/movie.bloc.dart';
import 'provider/service/movie.service.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
/*here generate info*/
// Mock.GenerateMock();

    return BlocProvider(
      blocs: [
        Bloc((i) => MovieBloc(MovieService())),
      ],
      child: MaterialApp(
          title: "Netflix UI Redesign With Firebase , Bloc, RxDart ",
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          theme: ThemeData(
              fontFamily: "Raleway",
              scaffoldBackgroundColor: Colors.white,
              textTheme: TextTheme(body1: TextStyle(fontSize: 16)))),
    );
  }
}
