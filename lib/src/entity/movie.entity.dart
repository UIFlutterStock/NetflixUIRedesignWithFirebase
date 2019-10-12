import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'image.entity.dart';

class MovieEntity {
  String Id;
  String Title;
  String Categories;
  String TypeMovie;
  String Year;
  String Description;
  String Country;
  String Time;
  String Trailer;
  List<ImageEntity> ScreenShots;
  ImageEntity ScreenShot;
  DateTime CreatedIn;
  DateTime ModifiedIn;

  MovieEntity(
      {this.Id,
      this.Title = '',
      this.Categories,
      this.Year,
      this.Description,
      this.Time,
      this.Country,
      this.Trailer,
      this.TypeMovie,
      this.ScreenShot,
      this.ScreenShots,
      this.CreatedIn,
      this.ModifiedIn});

  MovieEntity.fromSnapshotJson(DocumentSnapshot snapshot)
      : this.Id = snapshot.documentID,
        this.Title = snapshot.data["Title"],
        this.Trailer = snapshot.data["Trailer"],
        this.Description = snapshot.data["Description"],
        this.TypeMovie = snapshot.data["TypeMovie"],
        this.Categories = snapshot.data["Categories"],
        this.Year = snapshot.data["Year"],
        this.Country = snapshot.data["Country"],
        this.ScreenShot = ImageEntity.fromMap(snapshot['ScreenShot']),
        this.ScreenShots =
            snapshot.data["ScreenShots"].map<ImageEntity>((item) {
          return ImageEntity.fromMap(item);
        }).toList(),
        this.CreatedIn = snapshot.data['CreatedIn'].toDate(),
        this.ModifiedIn = snapshot.data['ModifiedIn'].toDate();

  static Map<String, dynamic> stringToMap(String s) {
    Map<String, dynamic> map = json.decode(s);
    return map;
  }

  toJson() {
    return {
      "Id": this.Id,
      "Title": this.Title,
      "Categories": this.Categories,
      "Trailer": this.Trailer,
      "Description": this.Description,
      "Year": this.Year,
      "TypeMovie": this.TypeMovie,
      'ScreenShot':
          this.ScreenShot == null ? ImageEntity() : this.ScreenShot.toJson(),
      "Country": this.Country,
      "ScreenShots": this.ScreenShots == null
          ? List<ImageEntity>()
          : this.ScreenShots.map((i) => i.toJson()).toList(),
      "CreatedIn": this.CreatedIn == null ? DateTime.now() : this.CreatedIn,
      "ModifiedIn": this.CreatedIn == null ? DateTime.now() : this.CreatedIn,
    };
  }
}
