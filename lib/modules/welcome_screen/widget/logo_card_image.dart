import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LogoImage extends StatelessWidget {
  LogoImage({super.key , required this.image});
  String image;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Image(
      image:  AssetImage(image),
      height: size.height * .125,
      width: size.width * .25,
      fit: BoxFit.contain,
    );
  }
}
