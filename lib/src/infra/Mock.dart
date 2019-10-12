import 'package:netflixuiredesignwithfirebase/src/entity/entity.dart';
import 'package:netflixuiredesignwithfirebase/src/provider/provider.dart';
import 'package:netflixuiredesignwithfirebase/src/provider/service/movie.service.dart';

class Mock {


 static GenerateMock()async{


    MovieService db = MovieService();

    MovieEntity movie = MovieEntity(Categories: 'Adventure',
        Description: 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis.',
        TypeMovie: 'Featured',Title:'Aladim',Trailer: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/aladim/aladim.mp4',Country: 'USA',Time : '150 min',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/aladim/principal.jpg'),ScreenShots:List<ImageEntity>(),Year: '2019' );

    movie.ScreenShots.add(ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/aladim/screen1.jpg'));
    movie.ScreenShots.add(ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/aladim/screen2.jpg'));
    movie.ScreenShots.add(ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/aladim/screen3.jpg'));
    movie.ScreenShots.add(ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/aladim/screen4.jpg'));
    await db.save(movie);

    movie = MovieEntity(Categories: 'Fantasy',TypeMovie: 'Featured',Title:'The Nutcracker',Trailer: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/disney/trailer.mp4'
        ,Description: 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis.',
        Country: 'USA',Time : '150 min',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/disney/principal.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    movie.ScreenShots.add(ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/disney/1.jpg'));
    movie.ScreenShots.add(ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/disney/2.jpg'));
    movie.ScreenShots.add(ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/disney/3.jpg'));
    await db.save(movie);


    movie = MovieEntity(Categories: 'Terror',TypeMovie: 'Featured',Title:'IT 2',Trailer: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/disney/trailer.mp4'
        ,Country: 'USA',Time : '150 min',Description: 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis.',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/palhaco/principal.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    movie.ScreenShots.add(ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/palhaco/1.jpg'));
    movie.ScreenShots.add(ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/palhaco/2.jpg'));
    movie.ScreenShots.add(ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/palhaco/3.jpg'));
    movie.ScreenShots.add(ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/palhaco/4.jpg'));
    await db.save(movie);

    movie = MovieEntity(Categories: 'Terror',TypeMovie: 'MyList',Title:'MIB'
        ,Country: 'USA',Time : '120 min',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/mylist/1.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    await db.save(movie);

    movie = MovieEntity(Categories: 'Terror',TypeMovie: 'MyList',Title:'Abigail'
        ,Country: 'USA',Time : '120 min',Description: 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis.',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/mylist/2.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    await db.save(movie);

    movie = MovieEntity(Categories: 'Fantasy',TypeMovie: 'MyList',Title:'Spride-Man'
        ,Country: 'USA',Time : '120 min',Description: 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis.',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/mylist/3.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    await db.save(movie);

    movie = MovieEntity(Categories: 'Terror',TypeMovie: 'MyList',Title:'Avengers'
        ,Country: 'USA',Time : '120 min',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/mylist/4.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    await db.save(movie);

    movie = MovieEntity(Categories: 'Terror',TypeMovie: 'MyList',Title:'Angel Has  Fallen'
        ,Country: 'USA',Time : '120 min',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/mylist/5.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    await db.save(movie);


    movie = MovieEntity(Categories: 'Terror',TypeMovie: 'Popular',Title:'GenMan'
        ,Country: 'USA',Time : '120 min',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/popular/1.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    await db.save(movie);

    movie = MovieEntity(Categories: 'Terror',TypeMovie: 'Popular',Title:'Sonic'
        ,Country: 'USA',Time : '120 min',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/popular/2.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    await db.save(movie);

    movie = MovieEntity(Categories: 'Fantasy',TypeMovie: 'Popular',Title:'Losing'
        ,Country: 'USA',Time : '120 min',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/popular/3.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    await db.save(movie);

    movie = MovieEntity(Categories: 'Terror',TypeMovie: 'Popular',Title:'Kid King'
        ,Country: 'USA',Time : '120 min',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/popular/4.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    await db.save(movie);

    movie = MovieEntity(Categories: 'Terror',TypeMovie: 'Popular',Title:'Angel Has  Fallen'
        ,Country: 'USA',Time : '120 min',
        ScreenShot: ImageEntity(Url: 'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/popular/5.jpg'),ScreenShots:List<ImageEntity>(),Year: '2018' );

    await db.save(movie);


  }
}