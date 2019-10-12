import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:netflixuiredesignwithfirebase/src/entity/entity.dart';
import 'package:netflixuiredesignwithfirebase/src/provider/bloc/movie.bloc.dart';

class CategoryWidget extends StatelessWidget {
  MovieBloc _movieBloc = BlocProvider.getBloc<MovieBloc>();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90.0,
        child: StreamBuilder(
            initialData: List<MovieEntity>(),
            stream: _movieBloc.listMoviesFlux,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) return Container(height: 1, width: 1);

              return ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  MovieEntity movie = snapshot.data[index] as MovieEntity;
                  return Container(
                    margin: EdgeInsets.all(10.0),
                    width: 160.0,
                    child: PhysicalShape(
                        color: Colors.transparent,
                        shadowColor: Colors.red,
                        elevation: 5.0,
                        clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: RawMaterialButton(
                            fillColor: Colors.transparent,
                            padding: const EdgeInsets.all(0.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            elevation: 0.0,
                            textStyle: Theme.of(context)
                                .textTheme
                                .button
                                .copyWith(color: Colors.white),
                            onPressed: null,
                            constraints: BoxConstraints.loose(Size(160, 90)),
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      colorFilter: new ColorFilter.mode(
                                          Colors.black.withOpacity(0.2),
                                          BlendMode.dstATop),
                                      image: new NetworkImage(
                                        movie.ScreenShot.Url,
                                      )),
                                  gradient: LinearGradient(
                                      colors: const [
                                        Color(0xffec2F4B),
                                        Color(0xffC02425)
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight)),
                              child: Center(child: Text(movie.Categories)),
                            ))),
                  );
                },
              );
            }));
  }
}
