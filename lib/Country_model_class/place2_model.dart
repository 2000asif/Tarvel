import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'place_model.dart';

class placeModel2 {
  String? placeTitle1;
  String? placeImage1;
  String? placePrice1;
  String? placeSubTitile1;
  String? iconText1;
  String? fujinomiyaJapan;
  String? iconText2;

  placeModel2(
      {this.placeTitle1,
      this.placeImage1,
      this.placePrice1,
      this.placeSubTitile1,
      this.iconText1,
      this.fujinomiyaJapan,
      this.iconText2});
}

List<placeModel2> placeName1 = [
  placeModel2(
      //Japan..........
      iconText2: "4.5  (2.220)",
      iconText1: '4.6',
      placePrice1: '\$349',
      placeSubTitile1: "Japan",
      placeTitle1: 'Temple Pagoda',
      fujinomiyaJapan:
          "https://cdn.pixabay.com/photo/2016/11/19/21/29/temple-1841296_960_720.jpg",
      placeImage1:
          "https://cdn.pixabay.com/photo/2016/11/19/21/29/temple-1841296_1280.jpg"),
  placeModel2(
      //Canada..........
      iconText2: "4.6 (2.020)",
      iconText1: '5.6',
      placePrice1: '\$300',
      placeSubTitile1: "Canada",
      placeTitle1: 'Fall Park',
      placeImage1:
          "https://cdn.pixabay.com/photo/2019/11/21/04/05/fall-4641619_1280.jpg"),
  placeModel2(
      iconText2: "4.7  (2.220)",
      iconText1: '6.7',
      placePrice1: '\$400',
      placeSubTitile1: "Bangladesh",
      placeTitle1: 'Garden',
      placeImage1:
          "https://cdn.pixabay.com/photo/2018/07/13/06/06/bangladesh-3535023_1280.jpg"),
  placeModel2(
      iconText1: '6.7',
      placePrice1: '\$400',
      placeSubTitile1: "USA",
      placeTitle1: 'New York',
      placeImage1:
          "https://cdn.pixabay.com/photo/2019/07/21/07/12/new-york-4352072_1280.jpg"),
  placeModel2(
      iconText1: '5.6',
      placePrice1: '\$900',
      placeSubTitile1: "Italy",
      placeTitle1: 'Mountains',
      placeImage1:
          "https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287_1280.jpg"),
  placeModel2(
      iconText1: '9.6',
      placePrice1: '\$320',
      placeSubTitile1: "Finland",
      placeTitle1: 'Helsinki',
      placeImage1:
          "https://cdn.pixabay.com/photo/2019/05/08/22/01/helsinki-cathedral-4189824_1280.jpg"),
];
