import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class b_DrownScreen extends StatelessWidget {
  const b_DrownScreen({Key? key}) : super(key: key);

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
                      child: Text('اعراض الغرق',
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
•	يكون الأشخاصُ، الذين يُواجهون الغرق ويُكافِحون للتنفُّس، غيرَ قادرين على طلب المُساعدة عادةً. قد يُغمَر الأطفال غير القادرين على السباحة في أقلّ من دقيقةٍ واحدةٍ، بينما قد يُكافِحُ البالغون لفترةٍ أطوَل.

•	وقد يُعاني الأشخاصُ الذين جرى إنقاذهم من طيفٍ واسعٍ من الأعراض والنتائج، ويمكن أن يشعرَ البعض بقلقٍ بسيطٍ، بينما يُوشك البعضُ الآخر على الوفاة. وقد يكونون في حالة يقظة أو نُعاس أو فقدان للوعي، وقد لا يتنفَّس البعض. 
•	بالنسبة إلى الأشخاص الذين يتنفَّسون، قد يَلهثُون لالتقاط أنفاسهم أو يتقيَّؤون أو يسعلون أو يُصدرون أزيزًا مع التنفُّس، ويمكن أن يبدو الجلدُ أزرق اللون (الزُّرقة cyanosis)، مما يشير إلى عدم كفاية الأكسجين في الدم. وفي بعض الحالات، قد لا تصبح المشاكلُ التنفُّسية واضحة لعدَّة ساعات من بعدَ الغمر في الماء.

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
