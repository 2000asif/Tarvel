import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tarvel_13/Component/discovery.dart';
import 'package:tarvel_13/Component/view.dart';
import 'package:tarvel_13/Country_model_class/place2_model.dart';
import 'package:tarvel_13/Country_model_class/place_model.dart';
import 'package:tarvel_13/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(containercolor)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Hei, Jhon Willy ",
                                  style: TextStyle(
                                    color: Color(titlecolor),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Dicover Your Destination For Holiday",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 4, color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://atg-prod-scalar.s3.amazonaws.com/studentpower/media/user%20avatar.png"),
                                          fit: BoxFit.cover)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 25),
                      clipBehavior: Clip.none,
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: "Sreach......",
                            helperStyle: TextStyle(
                              color: Colors.deepOrangeAccent,
                              letterSpacing: 1,
                            ),
                            filled: true,
                            suffixIcon: Icon(
                              IconlyLight.search,
                              color: Colors.pink,
                            ),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ],
                  )),
              HorizontalList(
                  itemCount: placeName.length,
                  itemBuilder: (_, i) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 4, color: Colors.black12)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 8,
                            decoration: BoxDecoration(
                                boxShadow: [BoxShadow(color: Colors.white)],
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      placeName[i].placeImage.toString(),
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              placeName[i].placeTitle.toString(),
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    child: ContainedTabBarView(
                      tabs: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Upcoming",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Recent",
                              style: TextStyle(
                                  color: Colors.black87.withOpacity(0.4),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ],
                        ),
                      ],
                      tabBarProperties: TabBarProperties(
                        indicator: ContainerTabIndicator(
                            color: Colors.transparent, borderWidth: double.nan),
                        width: 250,
                        height: 52,
                        background: Container(
                          decoration: BoxDecoration(),
                        ),
                        position: TabBarPosition.top,

                        alignment: TabBarAlignment.start,
                        // indicatorColor: Colors.transparent,
                        // labelColor: Colors.white,
                        // unselectedLabelColor: Colors.grey[400],
                      ),
                      views: [
                        HorizontalList(
                            itemCount: placeName1.length,
                            itemBuilder: (_, i) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ViewAll()),
                                  );
                                },
                                child: Container(
                                  height: 223,
                                  width: 160,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12, blurRadius: 4)
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Container(
                                            height: 157,
                                            width: 150,
                                            // height:
                                            //     MediaQuery.of(context).size.height / 3.8,
                                            // width: MediaQuery.of(context).size.width / 2.10,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        placeName1[i]
                                                            .placeImage1
                                                            .toString()),
                                                    fit: BoxFit.fill),
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              height: 24,
                                              width: 55,
                                              padding: EdgeInsets.all(6),
                                              decoration: BoxDecoration(
                                                color: Color(0xffC0C7FF)
                                                    .withOpacity(0.6),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    IconlyBold.star,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                  SizedBox(
                                                    width: 7.0,
                                                  ),
                                                  Text(
                                                    placeName1[i]
                                                        .iconText1
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        placeName1[i].placeTitle1.toString(),
                                        style: TextStyle(
                                            color: Color(maincolor),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              placeName1[i]
                                                  .placeSubTitile1
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color(maincolor),
                                                  fontSize: 10),
                                            ),
                                            Spacer(),
                                            Text(
                                              placeName1[i]
                                                  .placePrice1
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                        Container(color: Colors.green)
                      ],
                      onChange: (index) => print(index),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
