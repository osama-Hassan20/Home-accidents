import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class m_BurnsScreen extends StatelessWidget {
  const m_BurnsScreen({Key? key}) : super(key: key);

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
                      child: Text('الحرق الكهربائي',
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
                      padding: EdgeInsets.only(top: size.height * .12,
                          left: size.width * .1,
                          right: size.width * .02),
                      height: size.height * .48,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/burns9.png"),
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
هو حرق في الجلد يحدث عند تماس الكهرباء مع الجسد، وعندما يحدث التماس يمكن للتيار الكهربائي أن ينتقل خلال أنسجة الجسم محدثًا أذية في الأنسجة والأعضاء، تكون الأذية خفيفة أو شديدة كما يمكن أن تسبب الوفاة.

👈الاسعافات الأولية للحروق بالكهرباء:
1-فصل التيار الكهربائي عن طريق جسم عازل للكهرباء 
(خشب او البلاستيك ).
2-,الاتصال بالطوارئ على الفور (123 ) فوراً والابلاغ عن الحادث ومكانه.
3-إبعاد المصاب عن المصدر الكهربائى الذى سبب الحرق.
4- إزالة الملابس :يجب إزالة الملابس الملتصقة بالجسم .
5-تحديد عمق الحرق ومكان دخول الكهرباء للجسم.
5-تغطية الحروق بضمادة جافة معقمة.
6-لا تهدأ الحروق باستخدام الماء.
7- مراقبة ما إذا كانت توجد علامات تهدد حياة المصاب مثل: عدم انتظام ضربات القلب أو مشاكل التنفس.
8.	إذا كانت الحروق موجودة على الوجه أو في منطقة حساسة مثل العينين أو الفم، يجب التوجه إلى الطبيب على الفور.

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
