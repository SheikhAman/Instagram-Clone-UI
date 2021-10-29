import 'package:flutter/material.dart';
import 'package:myapp/widget/bottombar_widget.dart';
import 'package:myapp/widget/post_widget.dart';
import 'package:myapp/widget/story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_outlined,
          size: 40,
          color: Colors.grey[600],
        ),
        titleSpacing: 3,
        title: Text(
          'Instagram',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: 'Billabong',
            fontSize: 32,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('images/messanger.png'),
          ),
        ],
      ),
      body: Column(
        children: [
          StoryWidget(),
          Divider(
            color: Colors.grey,
          ),
          Expanded(child: PostWidget()),
        ],
      ),
      bottomNavigationBar: BottombarWidget(),
    );
  }
}
