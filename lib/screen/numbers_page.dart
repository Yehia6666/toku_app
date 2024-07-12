import 'package:flutter/material.dart';
import '../component/item.dart';
import '../model/number.dart';

class NumbersPagE extends StatelessWidget {
  const NumbersPagE({Key? key}) : super(key: key);
  final List<Item> nuMber = const [
    Item(
        sound: 'numbers/number_one_sound.mp3',
        image: "assets/images/number/number_one.png",
        jpName: 'ichi',
        enName: 'one'),
    Item(
        sound: 'numbers/number_two_sound.mp3',
        image: 'assets/images/number/number_two.png',
        jpName: 'Ni',
        enName: 'two'),
    Item(
        sound: 'numbers/number_three_sound.mp3',
        image: 'assets/images/number/number_three.png',
        jpName: 'Mittsu',
        enName: 'three'),
    Item(
        sound: 'numbers/number_four_sound.mp3',
        image: 'assets/images/number/number_four.png',
        jpName: 'Shi',
        enName: 'four'),
    Item(
        sound: 'numbers/number_five_sound.mp3',
        image: 'assets/images/number/number_five.png', jpName: 'Go', enName: 'five'),
    Item(
        sound: 'numbers/number_six_sound.mp3',
        image: 'assets/images/number/number_six.png',
        jpName: 'Roku',
        enName: 'six'),
    Item(
        sound: 'numbers/number_seven_sound.mp3',
        image: 'assets/images/number/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven'),
    Item(
        sound: 'numbers/number_eight_sound.mp3',
        image: 'assets/images/number/number_eight.png',
        jpName: 'Hachi',
        enName: 'eight'),
    Item(
        sound: 'numbers/number_nine_sound.mp3',
        image: 'assets/images/number/number_nine.png',
        jpName: 'Kyū',
        enName: 'nine'),
    Item(
        sound: 'numbers/number_ten_sound.mp3',
        image: 'assets/images/number/number_ten.png',
        jpName: 'Jū',
        enName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text(
          'Number',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: nuMber.length,
        itemBuilder: (context, index) {
          return IteMFile(number: nuMber[index] , color: Colors.orange,);
        }
      ),
    );
  }
}
