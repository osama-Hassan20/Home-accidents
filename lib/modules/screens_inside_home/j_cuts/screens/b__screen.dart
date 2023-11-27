import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class b_cutsScreen extends StatelessWidget {
  const b_cutsScreen({Key? key}) : super(key: key);

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
                    Text('انواع الجروح',
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
                          image: AssetImage("assets/images/cuts2.png"),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      //child: BookInfo(size: size,)
                    ),

                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
👈السحجات وهى مجرد كشط الجلد مثل الخدوش البسيطة أو احتكاك بأجسام خشنة مثل الأرض، وتحدث فى الأطفال غالبا من السقوط على الأرض .لا يزيد النزف المحتمل فى هذه الحالات عن تسرب بسيط للدم من الشعيرات الدموية، ولكن احتمال التلوث موجود، إذ قد يجد الغبار والبكتيريا طريقهما إلى الأنسجة المفتوحة.
👈الجروح القطعية وهى جروح قاطعة للأنسجة وعادة تكون منتظمة الحواف وتسببها الأجسام الحادة مثل السكاكين وقطع الزجاج، ويكثر النزف من هذه الجروح.
👈الجروح النزعية (المصحوبة ببتر) وهى جروح يحدث فيها انفصال أو تمزق جزء من أنسجة جسم المصاب كانتزاع الأصبع أو طرف الأذن أو أحد أطراف الجسم.
تحدث عادة نتيجة لعض الحيوانات، أو الإصابات من الحوادث والآلات والمفرقعات، ويعقبها عادة نزيف شديد.
يمكن لبعض الجراحين إعادة الجزء المنتزع إلى مكانه فى الجسم ولذلك يوصى دائما أن يرسل الجزء المنتزع مع المصاب إلى المستشفى.
👈الجروح الوخذية "النافذة" وهى جروح تتسبب من أجسام مدببة مثل المسامير والشظايا.
قد تصل هذه الجروح إلى مسافة عميقة داخل الأنسجة.
لا يبدو منها نزيف خارجى ظاهر ولكن المدبب قد يخترق الأنسجة إلى عمق كبير فيصيب الأحشاء والأعضاء فيسبب نزيفا داخليا.
وهذه الجروح من أكثر الجروح احتمالا للتلوث لعمقها وقلة نزفها الخارجى وهناك احتمال كبير لنشاط ميكروب التيتانوس.

👈الجروح المغلقه
 تحدث معظم الجروح المغلقة أو الكدمات نتيجة الاصطدام بآلة صلبة غير حادة
يبقى الجلد سليما أو قد يكون الضرر بسيطا للجلد، لكن الأنسجة تحت الجلد قد تكون إصابتها شديدة، قد يحدث نزيف فى الأوعية الدموية تحت الجلد.
نجد المصاب يشكو من ألم ونرى ورما وتلونا فى الأنسجة الرخوة.

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
