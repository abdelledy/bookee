import 'package:bookee/widgets/for_you.dart';
import 'package:bookee/widgets/most_popular.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          MostPopular(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
          child: BottomNavigationBar(
            elevation: 0.0,
            // fixedColor: Colors.white,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.grey[800],
            onTap: (int value) {
              setState(() {
                _currentTab = value;
              });
            },
            currentIndex: _currentTab,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                ),
                title: SizedBox.shrink(),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_border,
                  size: 30.0,
                ),
                title: SizedBox.shrink(),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_mall,
                  size: 30.0,
                ),
                title: SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
