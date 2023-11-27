import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class f_FallScreen extends StatelessWidget {
  const f_FallScreen({Key? key}) : super(key: key);

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
                      child: Text('طوات الاسعافات الأولية لسقوط الاطفال ',
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
في البداية ينصح بعدم التوتر والالتزام بالهدوء النفسي للتمكن من إسعاف الطفل بطريقة صحيحة، وفيما يلي سنوضح أساسيات الإسعافات الأولية للاطفال عند السقوط على الأرض:
•	عدم تحريك الطفل من مكانه، وفي حالة الضرورة يجب نقله بحرص على سطح صلب مثل لوح خشبي، حتى لا يتعرض إلى إصابات خطيرة
•	من المفضل الاتصال بالطوارئ في حالة الإصابة بكسور في العمود الفقري، أو الرأس، أو أحد الأطراف العليا أو السفلى وذلك لعدم حدوث مضاعفات للكسر.
•	ينصح بوضع كمادات الثلج على مكان الإصابة للحد من التورم وتخفيف الشعور بالألم-
•	يجب استخدام ضمادة في حالة وجود جرح أو نزيف دموي للمساعدة على توقف الدم.
•	يفضل استخدام دعامة أو جبيرة من الخشب أو الكرتون لتثبيت مكان الإصابة.
•	الحرص على تشتيت انتباه الطفل إلى الألم وشدة الإصابة، وذلك من خلال قراءة قصص الأطفال أو سماع الأغاني المحببة إليه.
•	الذهاب إلى المستشفى لإجراء الفحوصات الطبية والأشعة اللازمة للتأكد من عدم تعرض الطفل إلى الكسور أو النزيف أو الارتجاج

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
