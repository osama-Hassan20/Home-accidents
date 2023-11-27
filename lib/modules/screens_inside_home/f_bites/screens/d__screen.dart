import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class d_BitesScreen extends StatelessWidget {
  const d_BitesScreen({Key? key}) : super(key: key);

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
                      child: Text('الوقايا',
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
• تجنب العطر والملابس الزاهية الألوان لتقليل التعرض للدغات النحل.
• السيطرة على روائح المتنزهات ومناطق القمامة التي يمكن أن تجذب الحشرات.
• هدم أو نقل خاليا النحل أو العشش القريبة من بيتك. 
• لا تترك برك ماء راكد حيث إنها تجذب الناموس. 
• الأجهزة الكهربائية الطاردة للحشرات وأشعال الحلزون الطارد للحشرات قد يكونون فعالين. 
• قم بتغطية كل أجزاء الجسم بالملابس، القبعات، الجوارب وقفازات إذا ذهبت إلى مناطق يزيد فيها احتمال  التعرض للسعة أو لدغة الحشرات.  
• معالجة ومراقبة دورية للحيوانات الأليفة في المنزل مثل القطط والكالب والحيوانات الأليفة المنزلية 
الأخرى من البراغيث بانتظام.
• استحدم طاردات الحشرات  

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
