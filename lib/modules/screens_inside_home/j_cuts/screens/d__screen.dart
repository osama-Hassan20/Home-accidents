import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class d_cutsScreen extends StatelessWidget {
  const d_cutsScreen({Key? key}) : super(key: key);

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
                      child: Text('خطوات تنظيف الجروح',
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
                          right: size.width * .02
                      ),
                      height: size.height * .48,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/cuts4.png"),
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
١- اغسل الجرح بمحول الملح أو بالماء المتدفق و الصابون ثم اشطف الجرح تحت الصنبور بقوة الماء.
٢- يمكن إخراج الأجسام الغريبة التى لا تخرج بتدفق الماء باستخدام ملقاط نظيف.
٣- إذا تسبب تنظيف الجرح فى نزيف اضغط على مكان النزيف.
٤- لا تضع قطن فوق الجرح لأن الألياف تلتصق بالجرح ويصعب إخراجها.
٥- لا تنزع غيار مشبع بالدم لأن النزيف قد يزداد من جديد ولكن ضع فوقه غيار جاف وقم بالضغط أو الربط.
٦- لا تنزع غيار ملتصق بالجرح عنوة و لكن يمكن استعمال ماء دافئ أو محلول ملح لإخراجه بسهولة.
٧- ممنوع غسل الجرح بالمواد المطهرة المركزة مثل الأيودين المركز أو ماء الأكسجين لأن دلك يؤدى إلى تآكل الأنسجة و بطء الالتئام.
٨- لا تضع مراهم فى الجروح العميقة لأن ذلك يمنع خروج الإفرازات من الجرح ولكن يمكن استعمال المرهم فى الجروح السطحية أو السجحات.
٩- يجب تغيير الغيار إذا اتسخ أو ابتل.
٠١- فى حالة الجروح الملوثة وخاصة المتهتكة والعميقة يجب استشارة الطبيب لإعطاء مصل التيتانوس حسب مستوى المناعة المكتسبة لدى المريض ونوع الجرح.

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
