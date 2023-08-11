import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:juice_app_ui/views/home_view.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Image.asset(
            'images/berries.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.5),
            colorBlendMode: BlendMode.darken,
          ),
        ),
        ListView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          children: [
            SizedBox(
              height: 80,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.sort,
                color: Colors.white,
                size: 50,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'JUICY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: FaIcon(
                FontAwesomeIcons.glassCheers,
                color: Colors.white,
                size: 100,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                'Berry Juice',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'blend of berry with ice that make your tired day feels very fresh again.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.95),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                '₹40 / glass',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Explore more',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
