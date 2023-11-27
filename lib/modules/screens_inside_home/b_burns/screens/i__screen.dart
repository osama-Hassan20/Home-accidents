import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class i_BurnsScreen extends StatelessWidget {
  const i_BurnsScreen({Key? key}) : super(key: key);

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
                      child: Text('الاسعافات الاولية للدرجة الأولى من الحرق',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: color,

                        ),
                        textAlign:TextAlign.center ,
                      ),
                    ),

                    Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.only(top: size.height * .12,
                          left: size.width * .1,
                          right: size.width * .02),
                      height: size.height * .48,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/burns5.png"),
                          fit: BoxFit.contain,
                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),

                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
تتطلب الحروق من الدرجة الأولى إجراء بعض الإجراءات الأولية البسيطة لتخفيف الألم والتورم وتسريع الشفاء. ومن الإسعافات الأولية التي يمكن اتباعها:
1.	يجب خلع المجوهرات اواي شئ معدن يرتديه المصاب قابل للسخونه.
2.	تبريد المنطقة المحترقة بالماء البارد لمدة 10 إلى 15 دقيقة. يمكن استخدام منشفة رطبة أو ورقة منديل لتغطية المنطقة المحترقة ومنع تداول الهواء عليها.
3.	استخدام كريم مسكن للألم، مثل كريم هيدروكورتيزون، على المنطقة المحترقة.
4.	تناول الأسيتامينوفين (بانادول) لتخفيف الألم.
5.	الحرص على عدم فتح الحروق أو خلع الجلد المتشقق، حيث يعمل كواقيًا لحماية المنطقة المحترقة.
6.	تجنب استخدام الألياف الصناعية والمنسوجات الضيقة التي قد تحتوي على المواد الكيميائية والتي يمكن أن تسبب تهيجًا واحمرارًا.
7.	الحرص على تجنب التعرض للشمس المباشرة أو أي مصدر حرارة آخر، والإكثار من تناول السوائل لتجنب الجفاف.
8.	إذا كانت الحروق موجودة على الوجه أو في منطقة حساسة مثل العينين أو الفم، يجب التوجه إلى الطبيب على الفور.

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
