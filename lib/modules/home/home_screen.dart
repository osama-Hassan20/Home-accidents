import 'package:accidents/modules/home/widget/emergency_num.dart';
import 'package:accidents/modules/home/widget/home_item.dart';
import 'package:accidents/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../layout/doc_app/cubit/cubit.dart';
import '../../layout/doc_app/cubit/states.dart';
import '../screens_inside_home/a_chock/a_chock_screen.dart';
import '../screens_inside_home/b_burns/b_burns_screen.dart';
import '../screens_inside_home/c_fall/c_fall_screen.dart';
import '../screens_inside_home/d_drown/d_drown_screen.dart';
import '../screens_inside_home/e_poison/e_poison_screen.dart';
import '../screens_inside_home/f_bites/f_bites_screen.dart';
import '../screens_inside_home/g_fainting/g_fainting_screen.dart';
import '../screens_inside_home/h_sprains/h_sprains_screen.dart';
import '../screens_inside_home/i_fraction/i_fractionh_sprains_screen.dart';
import '../screens_inside_home/j_cuts/i_cuts_screen.dart';
import '../screens_inside_home/k_nose/k_nose_screen.dart';
import '../screens_inside_home/l_eye/i_cuts_screen.dart';
import '../screens_inside_home/m_strangulation/m_strangulation_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocConsumer<DocCubit, DocStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = DocCubit.get(context);
          Color color = cubit.isDark ? Colors.white : Colors.black;
          Color? colorContainer = cubit.isDark ? Colors.grey : Colors.grey[300];
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: size.width * .06,
                top: size.width * .06,
                right: size.width * .06,
                left: size.width * .06,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      BuildItem(
                        image: 'assets/images/chock2.jpg',
                        title: 'الاختناق',
                        onTap: () {
                          navigateTo(context, const aa_ChockScreen());
                        },
                      ),
                      SizedBox(
                        width: size.width * .05,
                      ),
                      BuildItem(
                        image: 'assets/images/burns8.png',
                        title: 'الحروق',
                        onTap: () {
                          navigateTo(context, const ab_BurnsScreen());
                        },
                      ),
                      SizedBox(
                        width: size.width * .05,
                      ),
                      BuildItem(
                        image: 'assets/images/fall1.png',
                        title: 'السقوط',
                        onTap: () {
                          navigateTo(context, const ac_FallScreen());
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.width * .05,
                  ),
                  Row(
                    children: [
                      BuildItem(
                        image: 'assets/images/drownn1.jpg',
                        title: 'الغرق',
                        onTap: () {
                          navigateTo(context, const ad_DrownScreen());
                        },
                      ),
                      SizedBox(
                        width: size.width * .05,
                      ),
                      BuildItem(
                        image: 'assets/images/poisonn1.jpg',
                        title: 'التسمم',
                        onTap: () {
                          navigateTo(context, const ae_PoisonScreen());
                        },
                      ),
                      SizedBox(
                        width: size.width * .05,
                      ),
                      BuildItem(
                        image: 'assets/images/bites2.png',
                        title: 'اللدغات',
                        onTap: () {
                          navigateTo(context, const af_BitesScreen());
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.width * .05,
                  ),
                  Row(
                    children: [
                      BuildItem(
                        image: 'assets/images/download (1).jpg',
                        title: 'الاغماء',
                        onTap: () {
                          navigateTo(context, const ag_FaintingScreen());
                        },
                      ),
                      SizedBox(
                        width: size.width * .05,
                      ),
                      BuildItem(
                        image: 'assets/images/sprains2.png',
                        title: 'الالتواء',
                        onTap: () {
                          navigateTo(context, const ah_SprainsScreen());
                        },
                      ),
                      SizedBox(
                        width: size.width * .05,
                      ),
                      BuildItem(
                        image: 'assets/images/fraction5.png',
                        title: 'الكسور',
                        onTap: () {
                          navigateTo(context, const ai_FractionScreen());
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.width * .05,
                  ),
                  Row(
                    children: [
                      BuildItem(
                        image: 'assets/images/cutss1.jpg',
                        title: 'الجروح',
                        onTap: () {
                          navigateTo(context, const al_CutsScreen());
                        },
                      ),
                      SizedBox(
                        width: size.width * .05,
                      ),
                      BuildItem(
                        image: 'assets/images/nosee1.jpg',
                        title: 'جروح الانف',
                        onTap: () {
                          navigateTo(context, const ak_NoseScreen());
                        },
                      ),
                      SizedBox(
                        width: size.width * .05,
                      ),
                      BuildItem(
                        image: 'assets/images/images.jpg',
                        title: 'اصابات العين',
                        onTap: () {
                          navigateTo(context, const al_EyeScreen());
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.width * .05,
                  ),
                  BuildItem(
                    image: 'assets/images/اختناق.jpg',
                    title: 'الخنق',
                    onTap: () {
                      navigateTo(context, const am_Strangulation());
                    },
                  ),
                  SizedBox(
                    height: size.width * .05,
                  ),
                  EmergencyNumber(
                      colorContainer: colorContainer!, color: color),
                  SizedBox(
                    height: size.width * .05,
                  ),
                ],
              ),
            ),
          );
        },);
  }
}
