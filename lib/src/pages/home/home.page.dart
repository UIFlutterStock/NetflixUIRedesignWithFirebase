import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:netflixuiredesignwithfirebase/src/pages/home/top.widget.dart';
import 'package:netflixuiredesignwithfirebase/src/provider/bloc/movie.bloc.dart';

import 'category.widget.dart';
import 'verticalmovie.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

MovieBloc _movieBloc = BlocProvider.getBloc<MovieBloc>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBar(),
      body: ListView(
        children: <Widget>[
          TopWidget(),
          CategoryWidget(),
          VerticalMovieWidge(
              title: 'My List', listMovieFlux: _movieBloc.listMoviesMyListFlux),
          VerticalMovieWidge(
              title: 'Popular', listMovieFlux: _movieBloc.listMoviesPopularFlux)
        ],
      ),
    );
  }

  getAppBar() => AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Center(
          child: Image(
            alignment: Alignment.center,
            height: 50,
            image: AssetImage('assets/images/netflex.png'),
          ),
        ),
        leading: IconButton(
          padding: EdgeInsets.only(left: 10.0),
          onPressed: () => {},
          icon: new Icon(
            Icons.sort,
            color: Colors.black,
            size: 25.0,
          ),
          iconSize: 30.0,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 30.0),
            onPressed: () => {},
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.black,
          ),
        ],
      );
}
