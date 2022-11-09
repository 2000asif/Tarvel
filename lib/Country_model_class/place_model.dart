import 'package:flutter/material.dart';
import 'place2_model.dart';

class placeModel {
  String? placeTitle;
  String? placeImage;
  String? placePrice;

  placeModel({this.placeTitle, this.placeImage, this.placePrice});
}

List<placeModel> placeName = [
  placeModel(
      placeTitle: 'Japan',
      placeImage:
          "https://cdn.pixabay.com/photo/2012/04/23/16/33/asia-38897_1280.png"),
  placeModel(
      placeTitle: 'Canada',
      placeImage:
          "https://cdn.pixabay.com/photo/2013/07/13/12/18/canada-159585_1280.png"),
  placeModel(
      placeTitle: 'Bangladesh',
      placeImage:
          "https://cdn.pixabay.com/photo/2013/07/13/14/14/bangladesh-162238_1280.png"),
  placeModel(
      placeTitle: 'USA',
      placeImage:
          "https://cdn.pixabay.com/photo/2017/02/06/15/09/american-flag-2043285_1280.png"),
  placeModel(
      placeTitle: 'Italy',
      placeImage:
          "https://cdn.pixabay.com/photo/2013/07/13/14/15/italy-162326_1280.png"),
  placeModel(
      placeTitle: 'Finland',
      placeImage:
          "https://cdn.pixabay.com/photo/2015/11/12/16/24/flag-1040602_1280.png"),
];
