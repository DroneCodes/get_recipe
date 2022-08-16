import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ItemSlider extends StatefulWidget {
  final String name;
  final String image;
  final String rating;

  const ItemSlider({
    Key? key,
    required this.name,
    required this.image,
    required this.rating,
  }) : super(key: key);

  @override
  _ItemSliderState createState() => _ItemSliderState();
}

class _ItemSliderState extends State<ItemSlider> {
  @override
  Widget build(BuildContext context) {
    // return CarouselSlider.builder(
    //   itemCount: 10,
    //   itemBuilder: (context, index, realIndex) {
    //     final image = image[]
    //   },
    //   options: CarouselOptions(height: 400),
    // );
    return Center();
  }
}
