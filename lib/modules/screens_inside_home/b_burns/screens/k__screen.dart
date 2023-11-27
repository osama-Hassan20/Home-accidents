import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class k_BurnsScreen extends StatelessWidget {
  const k_BurnsScreen({Key? key}) : super(key: key);

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
                      child: Text('الاسعافات الاولية للحروق من الدرجة الثالثة',
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
تعتبر الحروق من الدرجة الثالثة أكثر خطورة من حيث تأثيرها على الجلد والأنسجة الداخلية. ولذلك فإن الإسعافات الأولية لهذا النوع من الحروق يجب أن تكون على الفور وتحت إشراف الفريق الطبي المختص. وفيما يلي بعض الخطوات التي يمكن اتباعها في حالة الحروق من الدرجة الثالثة:
1.	اتصل بالإسعاف: يجب الاتصال بالفريق الطبي فوراً والابلاغ عن الحالة وموقع الحرق والدرجة.
2.	تقييم الوضع: يجب تقييم الوضع بحرص وتحديد الحروق الأخرى في الجسم.
3.	إطفاء النار: في حالة وجود أي شيء يحترق بالقرب من الجلد يجب إطفاءه على الفور.
4.	عدم ازاله الملابس اللاصقه في مكان الحرق حتي لا تزداد مساحه الحرق ويحدث مضاعفات
5.	يجب خلع المجوهرات اواي شئ معدن يرتديه المصاب قابل للسخونه.
6.	تبريد المنطقة: يجب تبريد المنطقة المصابة بالماء البارد (لكن ليس الجليد) لمدة 10-15 دقيقة. ولا يجب وضع أي شيء على الحرق، مثل الكريمات أو الزيوت.
7.	التحكم في النزيف: في حالة وجود نزيف، يجب التحكم فيه عن طريق وضع ضمادة نظيفة على الجرح.
8.	عدم لمس الحرق: يجب تجنب لمس الحرق باليد أو أي شيء آخر.
9.	تغطية الحرق: يمكن تغطية الحرق بقطعة قماش نظيفة وجافة حتى يصل الفريق الطبي.
10.	الابتعاد عن المواد الكيميائية: يجب تجنب استخدام المواد الكيميائية الخطيرة للحروق، وترك ذلك للفريق الطبي.
11.	عدم إزالة الملابس: في حالة تماس المنطقة المصابة بالحرق بالملابس، لا يجب إزالتها، وإذا كانت ملتصقة بالجلد يجب الاتصال بالفريق الطبي

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
