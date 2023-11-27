import 'package:accidents/modules/welcome_screen/widget/button_text.dart';
import 'package:accidents/modules/welcome_screen/widget/logo_card_image.dart';
import 'package:accidents/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/doc_app/cubit/cubit.dart';
import '../../layout/doc_app/cubit/states.dart';
import '../../layout/doc_app/doc_layout.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocConsumer<DocCubit, DocStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = DocCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.1,
                ),
                ButtonText(
                  text: 'حوادث المنازل',
                  width: size.width * .9,
                ),
                const Spacer(),
                Image(
                  image: const AssetImage('assets/images/aid3.png'),
                  height: size.height * .33,
                  width: size.width * .5,
                  fit: BoxFit.contain,
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width * .05093,
                    right: size.width * .05093,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      LogoImage(
                          image: 'assets/images/logo1-removebg-preview.png'),
                      LogoImage(
                          image: 'assets/images/logo9-removebg-preview.png'),
                      LogoImage(
                          image: 'assets/images/logo3-removebg-preview.png'),
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    navigateTo(context, const DocLayout());
                    cubit.currentIndex = 0;
                  },
                  child: ButtonText(
                    text: 'ابدأ ',
                    width: size.width * .55,
                  ),
                ),
                const Spacer(),
              ],
            ),
          );
        });
  }
}
