import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:netflixuiredesignwithfirebase/src/entity/entity.dart';
import 'package:netflixuiredesignwithfirebase/src/pages/details/details-movie.page.dart';
import 'package:netflixuiredesignwithfirebase/src/provider/bloc/movie.bloc.dart';

class TopWidget extends StatelessWidget {
  PageController _pageController =
      PageController(initialPage: 1, viewportFraction: 0.8);
  MovieBloc _movieBloc = BlocProvider.getBloc<MovieBloc>();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280.0,
        width: double.infinity,
        child: StreamBuilder(
            initialData: List<MovieEntity>(),
            stream: _movieBloc.listMoviesFlux,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) return Container(height: 1, width: 1);

              return PageView.builder(
                controller: _pageController,
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return _itemHeadMovie(snapshot.data[index], context, index);
                },
              );
            }));
  }

  _itemHeadMovie(MovieEntity movie, BuildContext context, int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsMoviePage(
              movie: movie,
            ),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Hero(
                    tag: movie.Title,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/images/placeholder.png',
                        height: 190.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: movie.ScreenShot.Url,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 70.0,
              child: Align(
                child: Container(
                  width: 250.0,
                  child: Text(
                    movie.Title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
