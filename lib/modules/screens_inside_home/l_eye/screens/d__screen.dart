import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class d_EyeScreen extends StatelessWidget {
  const d_EyeScreen({Key? key}) : super(key: key);

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
                      child: Text('طُرق الوقاية من إصابات العين',
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
                          '''•	ارتداء نظارة واقية أثناء ممارسة الأنشطة الخطرة.
•	راقب الأدوات التى يستخدمها طفلك: أى مادة حادة أو كيميائية .
•	تجنب ألعاب معينة للأطفال: مثل الألعاب النارية.
•	خذ حذرك عند الطهى أو استخدام الاجسام الساخنة ، مثل : رذاذ الزيوت و مكواة تصفيف الشعر .
•	قلل من المخاطر التى قد تسبب السقوط.
•	استخدم حزام الأمان لتثبيت طفلك في السيارة بإحكام.
•	لا تسمح لطفلك في سن ١٢ عاماً أو أصغر أن يركب بالمقعد الأمامى بالسيارة .

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
