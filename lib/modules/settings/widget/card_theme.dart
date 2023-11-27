import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

import '../../../layout/doc_app/cubit/cubit.dart';

// ignore: must_be_immutable
class CardThemeItem extends StatelessWidget {
   CardThemeItem({Key? key, required this.child}) : super(key: key);

  Widget child;

  @override
  Widget build(BuildContext context) {
     const double radius = 20;
    var cubit = DocCubit.get(context);
    Color colorCard = cubit.isDark ? HexColor('333739') : Colors.white;
    Color colorBorder = cubit.isDark ? Colors.white : Colors.black;
    return Card(
        color: colorCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: BorderSide(color: colorBorder, width: 3),
        ),
        child: child);
  }

}
