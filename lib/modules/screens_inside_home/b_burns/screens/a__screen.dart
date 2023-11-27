import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class a_BurnsScreen extends StatelessWidget {
  const a_BurnsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return BlocConsumer<DocCubit , DocStates>(
        listener: (context, state){},
    builder: (context, state) {
      var cubit = DocCubit.get(context);
      Color color = cubit.isDark ? Colors.white: Colors.black;
      return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          physics:  BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.end,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text('تعريف الحروق',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: color,

                      ),
                      textAlign:TextAlign.center ,
                    ),
                  ),

                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(
                        top: size.height * .12,
                        left: size.width * .1,
                        right: size.width * .02),
                    height: size.height * .48,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/burns2.png"),
                        fit: BoxFit.contain,
                      ),

                    ),
                    //child: BookInfo(size: size,)
                  ),

                  Center(
                    child: Directionality(
                      textDirection: TextDirection.rtl,

                      child: Text(
                        '''
هو تلف في الأنسجة بسبب التعرض للحرارة، الكهرباء، الإشعاع، أو المواد الكيميائية. وتتراوح شدة الحروق بين حالات بسيطة تتمثل في احمرار الجلد وتورمه، وحالات خطيرة جداً تؤدي إلى موت الأنسجة وتدمير العضو المصاب وتهدد حياة الإنسان. وتصنف الحروق عادةً حسب عمق الحرق في الجلد وحسب مساحة الجلد المصابة ومدى التأثير على الجسم، ويمكن استخدام نظام الدرجات لتصنيف الحروق (الدرجة الأولى، الدرجة الثانية، والدرجة الثالثة).
                        ''',
                        textAlign:TextAlign.start ,

                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: color,
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      );
        },
    );
  }
}
