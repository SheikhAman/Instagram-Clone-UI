import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  List<dynamic> story = [
    {"images": 'images/profile.png', "username": "Kakarot"},
    {"images": 'images/p1.jpg', "username": "Sheikh Aman"},
    {"images": 'images/p2.jpg', "username": "Nishar Ali"},
    {"images": 'images/p3.jpg', "username": "Farhd Hossen"},
    {"images": 'images/p4.jpg', "username": "Sifat Salam"},
    {"images": 'images/p5.jpg', "username": "Sheikh Adnan"},
    {"images": 'images/p6.jpg', "username": "Moin Akash"},
    {"images": 'images/p7.jpg', "username": "Iftekharul Haque"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                8,
                (index) => Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Column(
                    children: [
                      Container(
                        width: 67,
                        height: 67,
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF9B2282),
                                  Color(0xFFEEA863)
                                ])),
                        child: Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey, spreadRadius: 1),
                                ],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage('${story[index]["images"]}'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('${story[index]["username"]}'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
