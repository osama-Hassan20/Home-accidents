import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class e_DrownScreen extends StatelessWidget {
  const e_DrownScreen({Key? key}) : super(key: key);

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
                      child: Text('وضعية الإفاقة أو الوضعية الجانبية للسلامة للغريق ',
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
                          image: AssetImage("assets/images/drownn3.jpg"),
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
تعد الوضعية الجانبية للسلامة أو وضعية الإفاقة أفضل وضعية لشخص فاقد للوعي و يتنفس لما لها من فوائد على المصاب فاقد الوعى و فى انتظار المساعدة الطبية او سيارة الاسعاف أو استفاقته.

فوائد وضعية الافاقة
•	ابقاء مجرى الهواء مفتوح.
•	تفادي رجوع اللسان للخلف أو سقوط اللسان للحلق (بلع اللسان).
•	تسهيل خروج السوائل إلى الخارج في حالة التقيؤ ما يمنع انسداد مجرى الهواء بالقيء.
•	وضع مستقر تفاديا لتدهور حالة المصاب.
•	تفادي الضغط على الصدر



الخطوة 1

 تجلس ركبك بجانب الشخص و تجعل أحد ذراعيه على شكل زاوية قائمة.

الخطوة 2

تلتقط بلطف اليد الاخرى على خده المعاكس و تبقى يدك لدعم الرأس.

الخطوة 3
تلتقط بيدك الاخرى الركبة البعيدة عنك و تطويها ثم تجرها إليك لتقوم بتدوير الشخص على جانبه ووزنه سيساعدك على ذلك.

الخطوة 4

 بعد تدويره تسحب يدك و تميل بلطف الرأس قليلا للخلف و تفتح الممرات الهوائية و تتاكد من وجود تنفس.

الخطوة 5

إجعل رجله مطوية بزاوية 90 درجة.

الخطوة 6

 تغطية المصاب لحين وصول سيارة الاسعاف إن لزم الأمر.

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
