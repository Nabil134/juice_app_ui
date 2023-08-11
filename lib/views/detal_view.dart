import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  Map details;
  DetailPage(this.details);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Hero(
                tag: widget.details['background'],
                child: Image.asset(
                  widget.details['background'],
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(0.75),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 30),
              children: [
                SizedBox(
                  height: 70,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.local_fire_department,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.details['background']),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  widget.details['title'] + ' juice',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  widget.details['desc'],
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  widget.details['location'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  widget.details['amount'],
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Order now',
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
          ],
        ),
      ),
    );
  }
}
