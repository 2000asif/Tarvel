import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tarvel_13/Country_model_class/place2_model.dart';
import 'package:tarvel_13/app_colors.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2EDED),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  IconlyLight.arrow_left_circle,
                  color: Colors.orange,
                  size: 20,
                ),
              )),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        width: double.infinity,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: Text(
                      "Your Trip Count",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '\$250',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(maincolor)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(iconcolor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    placeName1[0].fujinomiyaJapan.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: 342,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text(
                                  "Duration",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(maincolor).withOpacity(0.5)),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  '6 Days',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  "Participant",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(maincolor).withOpacity(0.5)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '30 people',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  "landing",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(maincolor).withOpacity(0.5)),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  '2 Stop',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Fujinomiya',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(maincolor)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        IconlyLight.location,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Japan',
                        style:
                            TextStyle(color: Color(0xff7B7C7C), fontSize: 15),
                      )
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Row(
                      children: [
                        Icon(
                          IconlyBold.star,
                          color: Color(0xffFF7223),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          placeName1[0].iconText2.toString(),
                          style:
                              TextStyle(color: Color(0xff7B7C7C), fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              height: MediaQuery.of(context).size.height / 2.3,
              width: double.infinity,
              child: ContainedTabBarView(
                tabs: [
                  Text(
                    'About',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Benefit',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff808080)),
                  ),
                  Text(
                    "Highlights",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff808080)),
                  )
                ],
                tabBarProperties: TabBarProperties(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0.0,
                      vertical: 5.0,
                    ),
                    indicator: ContainerTabIndicator(
                      radius: BorderRadius.circular(8.0),
                      color: Color(iconcolor),
                      borderWidth: double.nan,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    background: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.white,
                            )
                          ]),
                    )),
                views: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Fujinomiya is a city located in central Shizuoka Prefecture, Japan. As of 1 July 2019, the city had an estimated population of 132,507 in 56,655 households, and a population density of 340 persons per km². The total area of the city is 388.99 square",
                        style: TextStyle(
                            color: Color(maincolor).withOpacity(0.6),
                            height: 2),
                        maxLines: 4,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                IconlyLight.home,
                                color: Color(maincolor),
                              ),
                            ),
                            title: Text(
                              "Hotel",
                              style: TextStyle(
                                  fontSize: 14, color: Color(maincolor)),
                            ),
                            subtitle: Text(
                              'Charme Spagna Boutique Hotel ',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                IconlyLight.ticket,
                                color: Color(maincolor),
                              ),
                            ),
                            title: Text(
                              "Tikect",
                              style: (TextStyle(
                                  fontSize: 14, color: Color(maincolor))),
                            ),
                            subtitle: Text(
                              '1 ticket for one trip home and away ',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                IconlyLight.star,
                                color: Color(maincolor),
                              ),
                            ),
                            title: Text(
                              "The best Food",
                              style: TextStyle(
                                  fontSize: 14, color: Color(maincolor)),
                            ),
                            subtitle: Text(
                              'Daily meals for each vacation',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: (Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Image(
                              image: NetworkImage(
                                  placeName1[0].placeImage1.toString()),
                            ),
                            title: Text(
                              'Shiraito Falls',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(maincolor)),
                            ),
                            subtitle: Text(
                              '3 KM',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            trailing: Icon(
                              IconlyLight.arrow_right_2,
                              color: Color(maincolor),
                            ),
                          ),
                          ListTile(
                            leading: Image(
                              image: NetworkImage(
                                  placeName1[0].placeImage1.toString()),
                            ),
                            title: Text(
                              'Lake Tanuki',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(maincolor)),
                            ),
                            subtitle: Text(
                              '3 KM',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            trailing: Icon(
                              IconlyLight.arrow_right_2,
                              color: Color(maincolor),
                            ),
                          ),
                          ListTile(
                            leading: Image(
                              image: NetworkImage(
                                  placeName1[0].placeImage1.toString()),
                            ),
                            title: Text(
                              'Jimba Waterfalls',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(maincolor)),
                            ),
                            subtitle: Text(
                              '3 KM',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            trailing: Icon(
                              IconlyLight.arrow_right_2,
                              color: Color(maincolor),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
                onChange: (index) => print(index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
