
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonText extends StatelessWidget {
  ButtonText({Key? key , required this.text,required this.width,}) : super(key: key);
  double width;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
      ),
      child:  Center(
        child: Text(text,
          style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    ) ;
  }
}
