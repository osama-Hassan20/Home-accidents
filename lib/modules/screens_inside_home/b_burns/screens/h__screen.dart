import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class h_BurnsScreen extends StatelessWidget {
  const h_BurnsScreen({Key? key}) : super(key: key);

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
                      child: Text('تتوقف خطورة الحروق علي ما يلي',
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
                      height: size.height * .55,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/burns4.png"),
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
1- مساحة الحرق: 
قاعدة التسعات
• الرأس والعنق =9%
• الذراع اليمنى =9%
• منطقة الجذع الامامية =18%
• منطقة الاعضاء التناسلية = 1%
• منطقة الجذع الخلفية =18%
• الرجل اليسرى =18%
• الذراع اليمنى =9%
• الرجل اليمنى =18%

2-العمق:
بإختبار الوخز حيث يوخز المريض فإذا شعر بألم يعتبر الحرق من الدرجة الاولى او الثانية اما اذا لم يشعر بالم فيعتبر من الدرجة الثالثة وذلك لان النهايات العصبية قد اتلفت بسبب الحرق. 
3-الموضع:
هناك أماكن في الجسم تكون حروقها أشد خطورة وأكثر ضررا من غيرها. وهـذا يعـودا لحـساسيتها واحتوائها علي الاعصاب والاوعية الدموية, منها علي سبيل المثال, حروق الوجه,   اليدين, والعنق.
4-العمر:
الحروق اكثر خطورة عند الاطفال والمسنين وذلك لان احتمال حدوث الصدمة والتوتر اكبر
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
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''متى يجب الذهاب للطبيب
                          ''',
                          textAlign:TextAlign.start ,

                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
إذا كان الحرق يشمل الوجه، اليدين، الأصابع، الأعضاء التناسلية، أو القدمين.
إذا كان الحرق على مفصل، أو بالقرب منه، مثل: مفصل الركبة، الكتف، الفخذ.
إذا كان الحرق يطوق جزءًا من الجسم، مثل: الذراع، الساق، القدم، الصدر، الإصبع.
إذا كان الحرق كبيرًا، يزيد على 7 سم، أو كان الحرق عميقًا.
إذا كان العمر أقل من 5 سنوات، أو أكثر من 70 سنة.
عند وجود علامات للعدوى الجلدية، مثل: زيادة الاحمرار، الألم، إفرازات تشبه القيح(الصديد)، أو عند ارتفاع درجة الحرارة إلى أكثر من 38 درجة مئوية.

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
