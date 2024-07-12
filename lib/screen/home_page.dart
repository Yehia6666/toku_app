
import 'package:flutter/material.dart';
import 'package:toku_app_testing/screen/colors.dart';
import 'package:toku_app_testing/screen/numbers_page.dart';
import 'package:toku_app_testing/component/category_item.dart';
import 'package:toku_app_testing/screen/phrases.dart';

import 'family_number.dart';

class HomeScreeN extends StatelessWidget {
  const HomeScreeN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text(
          'Toku',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Category(
              text: 'Number',
              colors: Colors.orange,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return NumbersPagE();
                }));
              },
            ),
          ),
          Expanded(
            child: Category(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Family_NumberS();
                }));
              },
              text: 'FamilyNumber',
              colors: Colors.green,
            ),
          ),
          Expanded(
            child: Category(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ColorS();
                }));
              },
              text: 'Colors',
              colors: Colors.deepPurple,
            ),
          ),
          Expanded(
          child: Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return PhrasES();
              }));
            },
            text: 'Phrases',
            colors: Colors.lightBlueAccent,
          ),
          ),
        ],
      ),
    );
  }
}
