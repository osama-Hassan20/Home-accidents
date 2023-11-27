import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class e_FallScreen extends StatelessWidget {
  const e_FallScreen({Key? key}) : super(key: key);

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
                      child: Text('طرق الوقاية لحماية الطفل من السقوط',
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
تعد الوقاية دومًا الخيار الأفضل لحماية الطفل من خطر السقوط، وفيما يلي سنذكر أهم النصائح والإرشادات الواجب اتباعها للتعامل مع الأطفال:
•	التأكد من إغلاق جميع الأبواب التي تؤدي إلى الأماكن المفتوحة مثل الشرفة والسطح بطريقة محكمة.
•	الحرص على تجفيف الأرضيات والأسطح الملساء من المياه حتى لا تسبب الانزلاق.
•	يفضل استعمال السجاد المانع للانزلاق في المناطق المعرضة للمياه، وخصوصًا داخل الحمامات والمطابخ.
•	ينصح بوضع الطفل على الكرسي المخصص له عند ركوب السيارة، بالإضافة إلى ربط حزام الأمان لحماية الطفل من خطر الإصابة أثناء السير.
•	الحرص على إزالة جميع الكراسي أو الطاولات القريبة من النوافذ حتى لا يتمكن الطفل من الصعود إلى النافذة والسقوط منها.
•	يفضل تغطية كافة الزوايا الحادة للأثاث وخصوصًا الزوايا الزجاجية، وذلك للوقاية من اصطدام رأس الطفل بها.
•	ينصح بتوفير الإضاءة الخفيفة أثناء الليل لحماية الطفل من خطر الاصطدام في الظلام.
•	توفير وسائل الحماية للرضيع أثناء النوم لمنع سقوطه من السرير، ويفضل عدم تركه بمفرده في الغرفة.

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
