import 'package:flutter/material.dart';
import 'package:tarvel_13/Component/home.dart';
import 'package:tarvel_13/app_colors.dart';

import 'Bottom_Nav.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future<void> goToHome() async {
    await Future.delayed(Duration(seconds: 1)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (_) => BottomNav())));
  }

  @override
  void initState() {
    // TODO: implement initState
    goToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color(iconcolor),
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2016/11/22/12/24/camp-1849133_1280.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Travel",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Color(containercolor),
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
