import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

import '../../../layout/doc_app/cubit/cubit.dart';

// ignore: must_be_immutable
class BuildItem extends StatelessWidget {
  BuildItem({
    Key? key,
    required this.image,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  GestureTapCallback onTap;
  String image;
  String title;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cubit = DocCubit.get(context);
    Color color = cubit.isDark ? Colors.white : Colors.black;
    Color? colorContainer = cubit.isDark ? Colors.grey : Colors.grey[300];
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.width * .306,
        //color: Colors.red,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Container(
              width: size.width * .255,
              height: size.width * .255,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor('#FFFFFF'),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.values.first,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width * .255,
                height: size.width * .102,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorContainer,
                ),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .045,
                        color: color),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
