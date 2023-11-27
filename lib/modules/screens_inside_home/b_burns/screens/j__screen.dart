import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class j_BurnsScreen extends StatelessWidget {
  const j_BurnsScreen({Key? key}) : super(key: key);

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
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text('الاسعافات الاولية الحروق من الدرجة الثانية ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: color,

                        ),
                        textAlign:TextAlign.center ,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: size.width *.42,
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.only(
                              top: size.height * .05,),
                          height: size.height * .48,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/burns7.png"),
                              fit: BoxFit.contain,
                            ),

                          ),
                          //child: BookInfo(size: size,)
                        ),
                        Spacer(),
                        Container(
                          width: size.width *.42,
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.only(
                            top: size.height * .05,

                              ),
                          height: size.height * .48,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/burns8.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                          //child: BookInfo(size: size,)
                        ),
                      ],
                    ),


                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
تعتبر الحروق من الدرجة الثانية هي الحروق التي تصل إلى طبقة الجلد الثانية، وتسبب ظهور فقاعات مليئة بالسائل وقد يكون لون الجلد أحمرًا أو ورديًا. وإليك بعض الإرشادات حول الإسعافات الأولية للحروق من الدرجة الثانية:
1.	التخلص من الملابس المحترقة والتي تلتصق بالجلد، ويجب عدم سحب هذه الملابس بالقوة إذا كانت ملتصقة بالجلد.
2.	يجب خلع المجوهرات اواي شئ معدن يرتديه المصاب قابل للسخونه.
3.	تبريد المنطقة المصابة بالحرارة الباردة لمدة تصل إلى 10-15 دقيقة، مثل استخدام الماء البارد أو الثلج الملفوف في منشفة نظيفة.
4.	وضع ضمادة نظيفة ورقيقة فوق الحروق، ويمكن استخدام كريمات مضادة للحرق للمساعدة في تخفيف الألم والتورم.
5.	تجنب استخدام الماء الساخن أو البخار أو الزيوت أو الدهون أو الأدوية على الحروق.
6.	البقاء في مكان بارد وجاف، وتجنب التعرض لأشعة الشمس المباشرة.
7.	البحث عن العلاج الطبي الفوري إذا كانت الحروق شديدة أو تغطي مساحة واسعة من الجسم.
ويجب على المصاب بالحرق من الدرجة الثانية الحرص على تناول السوائل بكثرة وتجنب الأطعمة الحارة والتوابل القوية، والتوقف عن التدخين في حال كان يدخن، حيث إن ذلك يساعد على تعزيز عملية التئام الجلد وتجنب العدوى.

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
