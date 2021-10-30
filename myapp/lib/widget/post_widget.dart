import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage('images/profile.png'),
                  ),
                ),
              ),
              title: Text('Kakarot'),
              subtitle: Text("Dhaka,Bangladesh"),
              trailing: Icon(Icons.more_vert),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/post1.jpg'))),
            ),
            ListTile(
              leading: Wrap(spacing: 10, children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 35,
                ),
                SvgPicture.asset('images/comment.svg', width: 30),
                SvgPicture.asset(
                  'images/directmessage.svg',
                  width: 30,
                ),
              ]),
              trailing: Icon(
                Icons.bookmark_border_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  '1000 likes',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  'Hey Guyz Subscribe My Channel',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  'View all 20 comments',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ]),
            ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage('images/profile.png'),
                  ),
                ),
              ),
              title: Text('Add a comment...'),
              trailing: Wrap(spacing: 10, children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 20,
                ),
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.grey,
                  size: 20,
                ),
              ]),
            ),
          ],
        );
      },
    );
  }
}
