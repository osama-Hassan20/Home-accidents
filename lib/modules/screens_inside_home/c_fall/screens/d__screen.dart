import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class d_FallScreen extends StatelessWidget {
  const d_FallScreen({Key? key}) : super(key: key);

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
                      child: Text('أعراض السقوط الخطيره التي تستدعي الطبيب',
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
هناك بعض الأعراض لا يجب إهمالها عند ظهورها على الطفل بعد تعرضه للسقوط، وفيما يلي أهم وأخطر 10 أعراض تحتاج إلى استدعاء الطبيب على الفور أو التوجه إلى أقرب مستشفى:
•	النوم لفترات طويلة على غير العاد 
•	تعرض الطفل إلى نوبات القيء المتكرر بعد سقوط 
•	صعوبة الحركة وعدم القدرة على المشي بشكل سليم 
•	الشعور بآلام حادة في أماكن متفرقة من الجسم وخصوصًا الرأس 
•	اضطرابات في القدرات الذهنية مع ضعف التركيز وتشتت الانتباه 
•	اضطرابات في النظر وعدم رؤية الأشياء بوضوح، وكذلك الشعور بالتحسس تجاه الضوء أو الصوت
•	التأكد من عدم الإصابة بالنزيف الداخلي أو التعرض للكسر في عظام الجمجمة عند سقوط الطفل على رأسه من مكان مرتفع
•	حدوث نزيف دموي من الأنف أو العينين أو الأذن، وكذلك في حالة ظهور كدمات أو جروح في الرأس
•	الشعور بالصداع الشديد أو الدوار أو فقدان توازن الجسم 
•	التعرض المستمر لنوبات التشنجات وكذلك عدم القدرة على التنفس بشكل صحيح

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
