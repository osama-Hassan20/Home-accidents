import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class l_BurnsScreen extends StatelessWidget {
  const l_BurnsScreen({Key? key}) : super(key: key);

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
                      child: Text('الادويه التي تساعد في معالجة الحروق',
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
👈إذا لم تُنقل إلى مركز الحروق، يمكن لفريق الرعاية الاختيار من بين مجموعة متنوعة من المستحضرات الموضعية لالتئام الجروح مثل باسيتراسين وسلفاديازين الفضة  (Silvadene) تساعد هذه العلاجات على الوقاية من العدوى والشفاء بسرعة.
👈الضمادات. ﻗﺪ يستخدم ﻓﺮﻳﻖ اﻟﺮﻋﺎية كذلك ﻣﺠﻤﻮﻋﺔ ﻣﻦ ﺿﻤﺎدات اﻟﺠﺮوح اﻟﻤﺘﻨﻮﻋﺔ لتساعد على شفاء الحروق.
👈 أما إذا نُقلتَ إلى مركز الحروق، من الأرجح أنه ستُستخدم لتغطية الجرح ضمادة جافة فقط.
👈الأدوية التي تقاوم العدوى. إذا أُصبت بعدوى، فربما تحتاج إلى الحصول على مضادات حيوية من خلال الوريد.
👈حقن التيتانوس. قد يُوصي الطبيب بإعطاء حقنة التيتانوس بعد الإصابة بالحرق.

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
