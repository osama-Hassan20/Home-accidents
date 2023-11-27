import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EmergencyNumber extends StatelessWidget {
  EmergencyNumber({Key? key,required this.colorContainer,required this.color,}) : super(key: key);
  Color color;
  Color colorContainer;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .75,
      height: size.height < 380
          ? size.height * .5
          : size.height * .25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(),
            Text(
              'في حالة الطوارئ إتصل بالاسعاف على الرقم',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * .045,
                  color: color),
            ),
            Text(
              '123',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * .045,
                  color: Colors.red),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
