import 'package:flutter/material.dart';
import 'package:ncbf/model/movie.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    })
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TopBar();
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/bbongflix_logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(
              right: 1,
            ),
            child: Text(
              'TV progaram',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              right: 1,
            ),
            child: Text(
              'Movie',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              right: 1,
            ),
            child: Text(
              'Like Contents',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
