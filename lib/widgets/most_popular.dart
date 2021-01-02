import 'package:bookee/models/book_model.dart';
import 'package:flutter/material.dart';

class MostPopular extends StatefulWidget {
  @override
  _MostPopularState createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Most Popular',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 220.0,
            child: ListView.builder(
              // scrollDirection: Axis.horizontal,
              itemCount: mostPopular.length,
              itemBuilder: (BuildContext context, int index) {
                Book book = mostPopular[index];
                return Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  width: 100.0,
                  // color: Colors.orange,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          width: 100.0,
                          height: 130.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(book.imgUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        width: 120.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book.name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'By ${book.author}',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          book.isBookmarked
                              ? Icons.bookmark
                              : Icons.bookmark_border,
                          size: 25.0,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
