import 'package:bookee/models/book_model.dart';
import 'package:flutter/material.dart';

class ForYou extends StatefulWidget {
  @override
  _ForYouState createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'For you',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView.builder(
              itemCount: forYou.length,
              itemBuilder: (BuildContext context, int index) {
                // Book book = forYou[index];
                return Container(
                  height: 110.0,
                  // width: 80.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/no-place-like-here.jpg'), // ${book.imgUrl}
                    ),
                  ),
                );
                // Text(book.name);
              }),
        ],
      ),
    );
  }
}
