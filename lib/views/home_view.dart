import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:juice_app_ui/views/detal_view.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List flavours = [
    'images/starw.jpeg',
    'images/oranges.jpeg',
    'images/mixed.jpeg',
    'images/berries.jpg',
    'images/grapes.jpg',
  ];

  List names = ['Strawberry', 'Oranges', 'Mixed', 'Blue berry', 'Grapesr'];

  List amount = [
    '₹30/glass',
    '₹25/glass',
    '₹40/glass',
    '₹20/glass',
    '₹25/glass'
  ];

  List location = [
    'Nainital (U.K)',
    'Nagpur (M.P),Hyderabad (A.P)',
    'Surat (GUJ)',
    'Jaipur (RAJ)'
  ];

  String desc =
      'mixed with chilled ice and griended with sponzita,picked with soft hands in sunshine morning, 100% pure,hygiene and checked by  fssai';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'images/berries.jpg',
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.7),
                colorBlendMode: BlendMode.darken,
              ),
            ),
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 30),
              children: [
                SizedBox(
                  height: 50,
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
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Healthy outside',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Short',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 31,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'From OutSide',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60, right: 78),
                  child: Text(
                    'we provide a variety of juices with various flavours',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'our some variants',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 280,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: flavours.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage({
                                  'background': flavours[index],
                                  'title': names[index],
                                  'amount': amount[index],
                                  'desc': desc,
                                  'location': location[index],
                                }),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Hero(
                                tag: flavours[index],
                                child: Container(
                                  height: 200,
                                  width: 140,
                                  margin: EdgeInsets.only(
                                      left: index == 0 ? 0 : 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(flavours[index]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  names[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  amount[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
