import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Movie_card extends StatelessWidget {
  const Movie_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: ListView(
        children: <Widget>[
          Column(children: [
            CarouselSlider(
              items: [
                //カルーセル表示するカード
                SizedBox(
                    child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text("aaaa"),
                  ),
                ))
              ],
              options: CarouselOptions(
                  initialPage: 0,
                  height: 400,
                  viewportFraction: 0.5,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.easeOutCubic),
            ),
          ])
        ],
      ))),
    );
  }
}
