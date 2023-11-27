import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class c_DrownScreen extends StatelessWidget {
  const c_DrownScreen({Key? key}) : super(key: key);

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
                      child: Text('الوقاية من الغرق',
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
•	اتباع تعليمات السلامة أثناء السباحة عند ارتياد الشواطئ أو المسابح.
•	السباحة في الأماكن الآمنة التي يتوفر فيها المنقذ.
•	عدم السباحة بعد تناول الطعام مباشرة.
•	عدم التدخين قبل السباحة.
•	عدم ترك الطفل يسبح أو يلعب في الماء بفرده.
•	ارتداء السترة الخاصة بالسباحة أو الوسائل الأخرى المساعدة والآمنة.
•	عدم السباحة لوحدك.
•	ارتداء اللباس الخاص بالسباحة وعدم السباحة باللباس الكامل
•	تركيب حواجز للتحكم في الوصول إلى المياه.
•	إتاحة أماكن مأمونة بعيدة عن المياه مثل دور الحضانة للأطفال في سن ما قبل المدرسة.
•	تعليم السباحة والسلامة المائية ومهارات الإنقاذ المأمونة.

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
