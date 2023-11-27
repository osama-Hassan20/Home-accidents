import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class d_FractionScreen extends StatelessWidget {
  const d_FractionScreen({Key? key}) : super(key: key);

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
                      child: Text('الاسعافات الاوليه للكسر المفتوح',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: color,

                        ),
                        textAlign:TextAlign.center ,
                      ),
                    ),

                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
                          
                          
👈لا تحرّك الشخص إلا إذا كان ذلك ضروريًا لتجنب التعرض لإصابة أخرى. بادر باتخاذ هذه الإجراءات على الفور أثناء انتظار المساعدة الطبية:
1)	أوقف أي نزيف. اضغط على الجرح بضمادة معقمة أو قطعة قماش نظيفة أو قطعة ملابس نظيفة.''',
                          textAlign:TextAlign.start ,

                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: color,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * .2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/fraction2.png"),
                          fit: BoxFit.contain,
                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''2)	لا تحرّك المنطقة المصابة. لا تحاول أن تعيد العظمة إلى مكانها أو أن تضغط على العظمة العالقة لتعيدها إلى مكانها. إذا كنت قد تلقيت تدريبًا على كيفية التجبير ولم يكن هناك أخصائي متاح على الفور، فضع جبيرة على المنطقة التي تقع أعلى مواقع الكسر وأسفلها. وقد يساعد تبطين الجبيرة في تقليل الشعور بعدم الراحة.
3)	ضع كمادات باردة لتقليل التورم والمساعدة في تخفيف الألم. لا تضع الثلج على الجلد مباشرة. لف الثلج بمنشفة أو قطعة قماش أو مادة أخرى.

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
                    Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/fraction3.png"),
                          fit: BoxFit.contain,
                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''4)	لا تحرّك المنطقة المصابة. لا تحاول أن تعيد العظمة إلى مكانها أو أن تضغط على العظمة العالقة لتعيدها إلى مكانها. إذا كنت قد تلقيت تدريبًا على كيفية التجبير ولم يكن هناك أخصائي متاح على الفور، فضع جبيرة على المنطقة التي تقع أعلى مواقع الكسر وأسفلها. وقد يساعد تبطين الجبيرة في تقليل الشعور بعدم الراحة.

5)	عالج الصدمة، أذا كان الشخص يشعر بالإعياء أو يتنفس بشكل متقطع أو سريع، فمدده مع خفض رأسه عن الجذع قليلاً وارفع ساقيه إذا أمكن.

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
                    Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/fraction4.png"),
                          fit: BoxFit.contain,
                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''👈ملحوظة: يجب عدم تحريك المنطقة المصابة؛ لأن تحريكها يمكن أن يؤدي إلى مضاعفات بالغة، خصوصًا إذا كان الكسر في الرقبة، أو العمود الفقري. 
•	الاتصال بالإسعاف؛ طلبًا للمساعدة، ولنقل المصاب إلى قسم الطوارئ؛ لاتخاذ الإجراءات اللازمة من فحوصات، وعلاج.

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
