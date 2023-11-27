import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class c_ChockScreen extends StatelessWidget {
  const c_ChockScreen({Key? key}) : super(key: key);

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
                      child: Text('الإجراءات الوقائية لتجنب وقوع حوادث الاختناق وحماية الأطفال، ومن هذه الإجراءات',
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
                          image: AssetImage("assets/images/chock3.png"),
                          fit: BoxFit.contain,

                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),
                    //chock8.jpg

                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
1- تجنب إعطاء الأطفال الأطعمة الصلبة حتى يتمكنوا من المضغ والبلع بشكل صحيح.
2- الابتعاد عن إعطاء الأطفال الأشياء الصغيرة التي يمكن ابتلاعها بسهولة مثل القطع الصغيرة من اللعب.
3- تجنب السماح للأطفال بوضع الأشياء في أنفهم أو في أذنيهم.
4- الابتعاد عن ترك الأطفال بمفردهم في الحمام أو الحجرة المليئة بالأشياء الخطرة.
5- الابتعاد عن تعليق الحبال أو الأشياء الصغيرة أو الحلي أو الحبال أو الأشياء المشابهة في متناول الأطفال.
6- إبقاء الأدوات الحادة مثل المقص أو السكين بعيدا عن متناول الأطفال.
7- استخدام ألعاب الأطفال التي تتمتع بالأمان والمصممة لعمر الطفل.


''',
                          textAlign:TextAlign.start ,

                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: color,
                          ),
                        ),
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
                          image: AssetImage("assets/images/chock8.jpg"),
                          fit: BoxFit.contain,

                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''يهدف كل من هذه الإجراءات إلى تقليل فرص حدوث الاختناق لدى الأطفال، وينبغي على الأهل والمربين توعية أنفسهم وتعليم الأطفال عن أهمية السلامة والابتعاد عن الأشياء الخطرة

''',
                          textAlign:TextAlign.start ,

                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
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
