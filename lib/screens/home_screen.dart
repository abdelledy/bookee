import 'package:bookee/widgets/for_you.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Theme.of(context).accentColor,
                size: 30.0,
              ),
              onPressed: () {},
            ),
          ],
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.grain,
              color: Theme.of(context).accentColor,
              size: 30.0,
            ),
            onPressed: () {},
          ),
        ),
        body: Column(
          children: [
            ForYou(),
          ],
        ),
      ),
    );
  }
}
