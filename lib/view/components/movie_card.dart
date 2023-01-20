import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Movie_card extends StatelessWidget {
  const Movie_card({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        //カルーセル表示するカード
        SizedBox(
            width: 500,
            height: 100,
            child: Card(
              child: Center(child: Text('Card2')),
              color: Colors.blue,
            )),
        SizedBox(
            width: 500,
            height: 100,
            child: Card(
              child: Center(child: Text('Card2')),
              color: Colors.red,
            ))
      ],
      options: CarouselOptions(
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 20),
        autoPlayAnimationDuration: Duration(seconds: 1),
        enlargeCenterPage: true,
      ),
    );
  }
}
