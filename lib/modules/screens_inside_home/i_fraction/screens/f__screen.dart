import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class f_FractionScreen extends StatelessWidget {
  const f_FractionScreen({Key? key}) : super(key: key);

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
                      child: Text('	كسور الرقبة والعمود الفقري',
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
                          image: AssetImage("assets/images/fraction8.png"),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      //child: BookInfo(size: size,)
                    ),

                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''•	إذا كنت تشك في حدوث إصابة في الظهر أو الرقبة (العمود الفقري)، فلا تحرك الشخص المصاب. فقد يؤدي ذلك إلى حدوث شلل دائم ومضاعفات خطيرة أخرى. 
👈 ينبغي افتراض أن الشخص لديه إصابة في العمود الفقري في حالة:
1)	وجود دليل على حدوث إصابة في الرأس مع تغيُّر مستمر في مستوى وعي الشخص
2)	شكوى الشخص من ألم شديد في رقبته أو ظهره.
3)	تسبُّب الإصابة في التأثير بقوة كبيرة على الظهر أو الرأس
4)	شكوى الشخص من الضعف أو الخدر أو الشلل أو ضعف السيطرة على الأطراف أو المثانة أو الأمعاء
5)	التواء الرقبة أو الجسم أو اتخاذه وضعية غريبة.

👈 الاسعافات الاولية إذا كان هناك شك بوجود كسر في الرقبة:

1)	احصل على المساعدة. اتصل بالرقم 123 أو اطلب المساعدة الطبية الطارئة.
2)	حافظ على إبقاء الشخص ثابتًا. ضع مناشف ثقيلة أو ملاءات ملفوفة على جانبي الرقبة أو امسك الرأس والرقبة لمنع الحركة.

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
                      alignment: Alignment.topCenter,

                      height: size.height * .3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/fraction9.png"),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      //child: BookInfo(size: size,)
                    ),
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
3)	تجنب تحريك الرأس أو الرقبة.
4)	 قدم أكبر قدر ممكن من الإسعافات الأولية دون تحريك رأس أو عنق الشخص. 
5)	لا تقم بإمالة الشخص بمفردك. 
6)	إذا اضطررت إلى إمالة الشخص لأنه يتقيأ أو يختنق بسبب الدم أو لأن عليك التأكد من أن الشخص ما زال يتنفس، فأنت بحاجة إلى شخص آخر على الأقل. مع وجود أحدكما عند الرأس والآخر على طول جانب الشخص المصاب، اعملا معًا للحفاظ على محاذاة رأس الشخص ورقبته وظهره في أثناء إمالته على جانب واحد.

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
