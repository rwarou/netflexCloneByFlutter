import 'package:flutter/material.dart';
import 'package:ncbf/model/movie.dart';
import 'package:ncbf/widget/boxSlider.dart';
import 'package:ncbf/widget/carouselSlider.dart';
import 'package:ncbf/widget/circleSlider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie('사랑의 불시착', '사랑/로맨스/판타지', 'test_movie_1.png', false),
    Movie('사랑의 불시착', '사랑/로맨스/판타지', 'test_movie_1.png', false),
    Movie('사랑의 불시착', '사랑/로맨스/판타지', 'test_movie_1.png', false),
    Movie('사랑의 불시착', '사랑/로맨스/판타지', 'test_movie_1.png', false)
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(
          movies: movies,
        ),
        BoxSlider(
          movies: movies,
        ),
      ],
    );
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
