import 'package:flutter/material.dart';
import 'package:netflixuiredesignwithfirebase/src/entity/entity.dart';

class VerticalMovieWidge extends StatelessWidget {
  final Stream<List<MovieEntity>> listMovieFlux;

  final String title;

  const VerticalMovieWidge({Key key, this.listMovieFlux, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () => print('View  '),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250.0,
            child: StreamBuilder(
                initialData: List<MovieEntity>(),
                stream: listMovieFlux,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) return Container(height: 1, width: 1);

                  List<MovieEntity> movies = snapshot.data;
                  return listView(movies);
                }),
          ),
        ],
      ),
    );
  }

  listView(List<MovieEntity> movies) => ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 20.0,
            ),
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0.0, 4.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/placeholder.png',
                height: 190.0,
                width: double.infinity,
                fit: BoxFit.cover,
                image: movies[index].ScreenShot.Url,
              ),
            ),
          );
        },
      );
}
