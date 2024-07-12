import 'package:flutter/material.dart';

import '../component/item.dart';
import '../model/number.dart';
class Family_NumberS extends StatelessWidget {
  const Family_NumberS({Key? key}) : super(key: key);
  final List<Item> nuMber = const [
    Item(
        sound: 'family_members/father.wav',
        image: "assets/images/family_members/family_father.png",
        jpName: 'Chichioya',
        enName: 'Father'),
    Item(
        sound: 'family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother'),
    Item(
        sound: 'family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'GrandFather'),
    Item(
        sound: 'family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'O bāchan',
        enName: 'GrandMother'),
    Item(
        sound: 'family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Doughter',),
    Item(
        sound: 'family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',),
    Item(
        sound: 'family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'olderBrother'),
    Item(
        sound: 'family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'olderSister'),
    Item(
        sound: 'family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'youngerBrother'),
    Item(
        sound: 'family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'youngerSister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text(
          'FamilyNumber',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: nuMber.length,
          itemBuilder: (context, index) {
            return IteMFile(number: nuMber[index] , color: Colors.green,);
          }
      ),
    );
  }
}
