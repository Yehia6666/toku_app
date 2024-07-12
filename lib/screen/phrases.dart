import 'package:flutter/material.dart';

import '../component/item.dart';
import '../model/number.dart';
class PhrasES extends StatelessWidget {
  const PhrasES({Key? key}) : super(key: key);
  final List<Item> nuMber = const [
    Item(
        sound: 'phrases/are_you_coming.wav',
        jpName: 'Kimasu ka',
        enName: 'are you coming'),
    Item(
        sound: 'phrases/dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        enName: 'dont forget to subscribe'),
    Item(
        sound: 'phrases/how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka.',
        enName: 'how are you feeling'),
    Item(
      sound: 'phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',),
    Item(
      sound: 'phrases/i_love_programming.wav',
       jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',),
    Item(
        sound: 'phrases/programming_is_easy.wav',
         jpName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'i love programming'),
    Item(
        sound: 'phrases/what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka',
        enName: 'what is your name'),
    Item(
        sound: 'phrases/where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'where are you going'),
    Item(
        sound: 'phrases/yes_im_coming.wav',
        jpName: 'Furēzu, wa i, ikimasu',
        enName: 'phrases, yes im coming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text(
          'Phrases',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: nuMber.length,
          itemBuilder: (context, index) {
            return Phrases(number: nuMber[index] , color: Colors.blue,);
          }
      ),
    );
  }
}
