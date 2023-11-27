import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class d_DrownScreen extends StatelessWidget {
  const d_DrownScreen({Key? key}) : super(key: key);

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
                      child: Text('الإسعافات الأولية للغرق',
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
                          image: AssetImage("assets/images/drownn2.jpg"),
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
ما الذي يجب فعله عند رؤية الغريق؟
•	طلب النجدة من المتواجدين في المكان.
•	التأكد من أن المحيط آمن للمنقذ.
•	انتشال الغريق من الماء فورًا إذا كان قريب، وإذا كان بعيد لا يجب السباحة إليه إلا إذا كان المنقذ سباحًا ماهرًا.
•	عند إنقاذ الغريق يجب إمساكه من الظهر وسحبه لمنع أمكانية الغرق للمنقذ أو المسعف لان الغريق قد يتشبث بالمنقذ ويغرقه

إجراءات إسعافية:
•	وضع الغريق على أرض مستوية مستلقيًا على ظهره، ويجب الحذر عند التعامل معه فقد يكون فاقدًا وعيه بسبب ارتطام رأسه بشيء.
•	مناداة الغريق وهز كتفيه للتأكد من استجابته.
•	إذا لم يستجب الغريق للنداء فيجب التحقق من تنفسه.
•	إرسال شخص للاتصال بالهلال الأحمر (997).
•	إذا كان الغريق يتنفس: وضعه في وضع الإفاقة وتدفئته بالملابس أو البطانية وتغيير ثيابه المبللة وانتظار سيارة الإسعاف.


•	إذا لم يكن يتنفس:
1- رفع رأس الغريق عن طريق وضع يد على جبينه ويد أسفل ذقنه ورفعه بحذر، وذلك لفتح مجرى التنفس.
2-   تحسس مكان الحنجرة (تفاحة آدم) في الرقبة باستخدام إصبعين، وذلك للتحقق من وجود النبض.
3-   البدء بإجراء التنفس الصناعي بالنفخ في فم المصاب 5 مرات ببطء (لمدة ثانية ونصف إلى ثانيتين) مع مراقبة ارتفاع صدره بعد النفخ والانتظار حتى يهبط صدره بين النفخات.
4-   القيام بعملية الإنعاش القلبي الرئوي (30 ضغطة).
5-   إعادة التنفس الصناعي بالنفخ مرتين فقط، ثم القيام بالإنعاش القلبي الرئوي مرة أخرى وهكذا إلى أن يستيقظ الغريق أو وصول سيارة الإسعاف.
6-   إذا استعاد الغريق تنفسه قبل وصول سيارة الإسعاف فيجب تدفئته بالملابس أو البطانية وتغيير ثيابه المبللة.
7-   مراقبة الغريق والتحقق من نبضه وتنفسه إلى أن يصل الإسعاف.

•	القيام بعملية الإنعاش القلبي الرئوي للغريق
يحافظ الإنعاش القلبي الرئوي على صحة الدماغ والقلب وغيره من الأعضاء، حتى تتم معالجة الغريق من قبل الكوادر الطبية المختصة.
يتم الإنعاش القلبي الرئوي من خلال الخطوات الآتية:
1.	قم بالركوع بجانب عنق الشخص والكتفين.
2.	ضع يدًا واحدة على صدر الغريق بين الحلمتين تحديدًا، ووضع اليد الأخرى على رأس اليد الأولى، حافظ على المرفقين في وضع مستقيم، وقم بوضع كتفيك مباشرة فوق يديك.
3.	استخدم وزنك أثناء الضغط على الصدر، وقم بالضغطات الصدرية بشكل مستمر.

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
