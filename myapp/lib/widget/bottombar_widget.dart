import 'package:flutter/material.dart';

class BottombarWidget extends StatelessWidget {
  const BottombarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/reel.png',
                width: 70,
              ),
              label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded), label: "heart"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage('images/profile.png'),
              ),
              label: "user"),
        ],
      ),
    );
  }
}
