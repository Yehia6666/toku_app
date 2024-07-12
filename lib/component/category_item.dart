import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text , this.colors , this.onTap});
  String? text ;
  Color? colors ;
  Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color:colors,
                ),
                child:
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Center(
                    child: Text(text! , style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
