import 'package:cloud_firestore/cloud_firestore.dart';

class ImageEntity {
  ImageEntity({this.Url = ''});

  String Url;

  ImageEntity.fromMap(Map<dynamic, dynamic> data) : Url = data["Url"];

  toJson() {
    return {"Url": this.Url};
  }
}
