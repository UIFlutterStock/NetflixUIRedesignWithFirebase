import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:netflixuiredesignwithfirebase/src/entity/entity.dart';
import 'package:netflixuiredesignwithfirebase/src/provider/service/movie.service.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc extends BlocBase {
  final MovieService _productService;

  MovieBloc(this._productService) {
/*set list firebase in cache using pather bloc*/
    _loadMovies();
  }

  final BehaviorSubject<List<MovieEntity>> _listMoviesController =
      new BehaviorSubject<List<MovieEntity>>.seeded(List<MovieEntity>());

  Observable<List<MovieEntity>> get listMoviesFlux =>
      _listMoviesController.stream;

  Sink<List<MovieEntity>> get listMoviesEvent => _listMoviesController.sink;

  final BehaviorSubject<List<MovieEntity>> _listMoviesPopularController =
      new BehaviorSubject<List<MovieEntity>>.seeded(List<MovieEntity>());

  Observable<List<MovieEntity>> get listMoviesPopularFlux =>
      _listMoviesPopularController.stream;

  Sink<List<MovieEntity>> get listMoviesPopularEvent =>
      _listMoviesPopularController.sink;

  final BehaviorSubject<List<MovieEntity>> _listMoviesMyListController =
      new BehaviorSubject<List<MovieEntity>>.seeded(List<MovieEntity>());

  Observable<List<MovieEntity>> get listMoviesMyListFlux =>
      _listMoviesMyListController.stream;

  Sink<List<MovieEntity>> get listMoviesMyListEvent =>
      _listMoviesMyListController.sink;


    /*load list home page by type */
  _loadMovies() async {
    listMoviesEvent.add(await _productService.getByTypeAll('Featured'));
    listMoviesPopularEvent.add(await _productService.getByTypeAll('Popular'));
    listMoviesMyListEvent.add(await _productService.getByTypeAll('MyList'));
  }

  @override
  void dispose() {
    _listMoviesController?.close();
    _listMoviesPopularController?.close();
    _listMoviesMyListController?.close();
    super.dispose();
  }
}
