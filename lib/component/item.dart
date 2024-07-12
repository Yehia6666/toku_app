import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../model/number.dart';

class IteMFile extends StatelessWidget {
  const IteMFile({required this.number,required this.color }) ;
  final Item number ;
  final Color color ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: color,
          child: Row(
            children: [
              Container(
                color: Colors.yellow[100],
                width: 80,
                height: 80,
                child: Image.asset(
                  number.image!,
                  height: 100,
                  width: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      number.jpName,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      number.enName,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                  onPressed: (){
                   try{
                     AudioCache players =AudioCache(prefix:'assets/sounds/');
                     players.play(number.sound);
                   }catch(ex){
                     print(ex);
                   }
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Phrases extends StatelessWidget {
  const Phrases({required  this.number , required this.color});
  final Item number ;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.0,
          color: color,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  width: 280,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        number.jpName,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        number.enName,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                  onPressed: (){
                    try{
                      AudioCache players =AudioCache(prefix:'assets/sounds/');
                      players.play(number.sound);
                    }catch(ex){
                      print(ex);
                    }
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

