import 'package:flutter/material.dart';

import '../component/item.dart';
import '../model/number.dart';

class ColorS extends StatelessWidget {
  const ColorS({Key? key}) : super(key: key);
  final List<Item> nuMber = const [
    Item(
        sound: 'colors/red.wav',
        image: "assets/images/colors/color_red.png",
        jpName: 'Aka',
        enName: 'red'),
    Item(
        sound: 'colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'gray'),
    Item(
        sound: 'colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    Item(
        sound: 'colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'black'),
    Item(
      sound: 'colors/dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Dasutiierō',
      enName: 'dustyYellow',),
    Item(
      sound: 'colors/green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'green',),
    Item(
        sound: 'colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'white'),
    Item(
        sound: 'colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text(
          'Colors',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: nuMber.length,
          itemBuilder: (context, index) {
            return IteMFile(number: nuMber[index] , color: Colors.deepPurple,);
          }
      ),

    );
  }
}
