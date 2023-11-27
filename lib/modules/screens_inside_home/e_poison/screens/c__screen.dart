import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class c_PoisonScreen extends StatelessWidget {
  const c_PoisonScreen({Key? key}) : super(key: key);

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
                      child: Text('	طرق الوقاية من التسمم الغذائي',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: color,

                        ),
                        textAlign:TextAlign.center ,
                      ),
                    ),

                    SizedBox(height: 100,),

                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
•	غسل أواني الأطعمة والخضار والفواكه بشكل جيد
•	غسل اليدين جيداً بالماء والصابون قبل وبعد تناول الطعام أو إعداده
•	الحفاظ على الأطعمة الغير مطبوخة بعيدة عن الأطعمة المُعدة للأكل
•	طهي الأطعمة على درجات حرارة آمنة ومناسبة تكفي لقتل الملوثات ففي اللحوم الحمراء يُوصى بطهيها تحت درجة حرارة تصل الى 71.1 درجة سيليسية.
•	تبريد أو تجميد الأطعمة القابلة للتلف سريعاً
•	إزالة تجميد الأطعمة تحت تأثير أشعة الميكرويف أو بوضعها في الثلاجة بدلاً من فك التجميد بدرجة حرارة الغرفة

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
