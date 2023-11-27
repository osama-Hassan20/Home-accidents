import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class b_ChockScreen extends StatelessWidget {
  const b_ChockScreen({Key? key}) : super(key: key);

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
                    Text('الاختناق للبالغين',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: color
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
                          image: AssetImage("assets/images/chockk2.jpg"),
                          fit: BoxFit.contain,
                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),

                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '•	السعال أو التقيؤ\n•	إشارات اليد والذعر (يشير أحيانًا إلى الحلق)\n•	عدم القدرة المفاجئة على الكلام\n•	إمساك الحلق: الاستجابة الطبيعية للاختناق هي إمساك الحلق بإحدى اليدين أو بكلتا يديه.  هذه علامة الاختناق العالمية وطريقة لإخبار الأشخاص من حولك أنك تختنق.\n•	صفير\n•	فقدان الوعي\n•	التحول إلى اللون الأزرق: يمكن رؤية الزرقة ، وهو لون أزرق للجلد ، في أقرب وقت حول الوجه والشفتين وأسرة الأظافر.  قد ترى هذا ، ولكن ستظهر علامات الاختناق الحرجة الأخرى أولاً\n•	إذا كان الرضيع مصابًا بالاختناق ، فيجب إيلاء المزيد من الاهتمام لسلوك الرضيع.  لا يمكن تعليمهم علامة الاختناق العالمية\n•	صعوبة في التنفس\n•	بكاء ضعيف أو سعال ضعيف أو كليهما',
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
