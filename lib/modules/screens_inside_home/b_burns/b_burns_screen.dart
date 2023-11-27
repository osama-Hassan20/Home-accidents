
import 'package:accidents/modules/screens_inside_home/a_chock/screens/b__screen.dart';
import 'package:accidents/modules/screens_inside_home/a_chock/screens/c__screen.dart';
import 'package:accidents/modules/screens_inside_home/a_chock/screens/d__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/a__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/b__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/c__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/d__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/e__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/f__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/g__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/h__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/i__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/j__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/k__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/l__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/m__screen.dart';
import 'package:accidents/modules/screens_inside_home/b_burns/screens/n__screen.dart';
import 'package:accidents/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../layout/doc_app/cubit/cubit.dart';
import '../../../layout/doc_app/cubit/states.dart';

class ab_BurnsScreen extends StatefulWidget {
  const ab_BurnsScreen({Key? key}) : super(key: key);

  @override
  State<ab_BurnsScreen> createState() => _ab_BurnsScreenState();
}
  class _ab_BurnsScreenState extends State<ab_BurnsScreen>{
  late bool isPlaying  , isMute ;
  final String url='https://youtu.be/wabnwvqaVMk';
  late YoutubePlayer youtubePlayer;
  late YoutubePlayerController _controller;
  late String id;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isMute = false;
    id=YoutubePlayer.convertUrlToId(url)!;
    _controller=YoutubePlayerController(initialVideoId: id,
    flags: YoutubePlayerFlags(autoPlay: false,)
    );
    youtubePlayer = YoutubePlayer(controller: _controller);
    isPlaying = _controller.value.isPlaying;

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics:  BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  alignment: Alignment.topCenter,

                      height: size.height * .3,

                  child: youtubePlayer,
                  //child: BookInfo(size: size,)
              ),
            ),


            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, a_BurnsScreen());
                      },
                      child: Container(
                        child: ChapterCard(
                          name: "تعريف الحروق",
                          press: () {
                            navigateTo(context, a_BurnsScreen());
                          },
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, b_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "الحروق السطحية",
                        press: () {navigateTo(context, b_BurnsScreen());},
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, c_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "الحروق ذات السماكة الجزئية ",
                        press: () {navigateTo(context, c_BurnsScreen());},
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, d_BurnsScreen());
                      },
                      child: ChapterCard(

                        name: "الحروق العميقة ",
                        press: () {navigateTo(context, d_BurnsScreen());},
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, e_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "الحروق بسمك كامل",
                        press: () {
                          navigateTo(context, e_BurnsScreen());
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, f_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "الاسباب",
                        press: () {
                          navigateTo(context, f_BurnsScreen());
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, g_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "لتجنب الحروق",
                        press: () {
                          navigateTo(context, g_BurnsScreen());
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, h_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "عوامل خطوره الحروق",
                        press: () {
                          navigateTo(context, h_BurnsScreen());
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, i_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "الاسعافات الاولية للدرجة الأولى",
                        press: () {
                          navigateTo(context, i_BurnsScreen());
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, j_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "الاسعافات الاولية للدرجة الثانيه",
                        press: () {
                          navigateTo(context, j_BurnsScreen());
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, k_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "الاسعافات الاولية للدرجة الثالثه",
                        press: () {
                          navigateTo(context, k_BurnsScreen());
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, l_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "ادوية الحروق",
                        press: () {
                          navigateTo(context, l_BurnsScreen());
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, m_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "الحروق الكهربائية",
                        press: () {
                          navigateTo(context, m_BurnsScreen());
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigateTo(context, n_BurnsScreen());
                      },
                      child: ChapterCard(
                        name: "الحروق الكيميائية",
                        press: () {
                          navigateTo(context, n_BurnsScreen());
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }

  textBuilder(String string, {double fontSize = 17, FontWeight weight = FontWeight.normal, Color color = Colors.black})
  {
    return Container(
        margin: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Text(
              string,
              style: TextStyle(fontSize: fontSize,
              fontWeight: weight,
              color: color,
              ),
        ));
  }





  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

}

class ChapterCard extends StatelessWidget {
  final String name;
  final VoidCallback? press;
  const ChapterCard({
  //  required Key key,
    required this.name,
    required this.press,
  }) ;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocConsumer<DocCubit , DocStates>(
        listener: (context, state){},
    builder: (context, state) {
      var cubit = DocCubit.get(context);
      Color colorText = cubit.isDark ? Colors.white : Colors.black;
      Color colorContainer = cubit.isDark ? Colors.grey : Colors.white;

      return Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        margin: EdgeInsets.only(bottom: 16),
        width: size.width *.95,
        decoration: BoxDecoration(
          color: colorContainer,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 33,
              color: cubit.isDark ? Color(0xFFD3D3D3).withOpacity(.3) : Color(0xFFD3D3D3).withOpacity(.99),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left_sharp,
                size: size.width *0.05,
                color: colorText,
              ),
              onPressed: press,
            ),
            Spacer(),
            Center(
              child: Expanded(
                child: Text(
                  "${name}",
                  style: TextStyle(
                    fontSize: size.width * .04,
                    color: colorText,
                    fontWeight: FontWeight.w800,


                  ),


                ),
              ),

            ),


          ],

        ),
      );
    }
    );
  }
}

