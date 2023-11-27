import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class c_FractionScreen extends StatelessWidget {
  const c_FractionScreen({Key? key}) : super(key: key);

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
                      child: Text('الوقايا من الكسور',
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
•	تناول الأطعمة الغنية بالكالسيوم (الحليب،اللبن،الجبنة)، وفيتامين د، الذي يساعد الجسم على امتصاص الكالسيوم، ويمكن الحصول على فيتامين د من الأسماك الدهنية.
•	ممارسة بعض التمارين الرياضية التي تعمل على تقوية العظام، والتدريبات التي تحسن التوازن ووضعية العظام ويقلل من فرصة حدوث الكسر.
•	ارتداء ملابس واقية قبل ممارسة الرياضة مثل الخوذة ومساند الكوع والركب.
•	الحرص على جعل بيئة المنزل آمنة للأطفال، المحافظة على اللعب بطريقة آمنة، والتأكد من أمان أماكن اللعب؛ لأن السقوط في أثناء اللعب من الأسباب الشائعة للكسور في الأطفال.
•	الحرص على أمان الطفل في المنزل، ومراقبته عند الصعود والنزول من السلم، وفي الأماكن المحتمل بها السقوط.
•	التأكد من ممارسة النشاط البدني بأمان، وذلك بارتداء الملابس الواقية، مثل: الخوذة، واقي الركبة والكوع وغيرها. من خلال وضع حواجز على السلالم وأغلاق النوافذ.

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
