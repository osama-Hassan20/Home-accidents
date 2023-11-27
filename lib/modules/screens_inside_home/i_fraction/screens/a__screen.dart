import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class a_FractionScreen extends StatelessWidget {
  const a_FractionScreen({Key? key}) : super(key: key);

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
                    child: Text('تعريف الكسور',
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
                        image: AssetImage("assets/images/fraction1.png"),
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
👈التعريف: هي حالة طبية تحدث بسبب إحداث قوة شديدة على العظام، مثل: السقوط، وحوادث السيارات، أو بسبب إجهاد العظام، كما هو الحال في الكسور التي تصيب الرياضيين. وقد يحدث الكسر أيضًا نتيجة لبعض الحالات المرضية التي تضعف العظام مثل: هشاشة العظام، أو بعض أنواع السرطان، وهو ما يعرف باسم الكسر المرضي.
👈والكسور الشائعة نوعان هما: 
1)	الكسر المغلق: وهو كسر العظام الذي لا يحدث معه تهتكًا بالجلد. 
2)	الكسر المركب (المفتوح): وهو الكسر الذي يحدث معه تهتكًا بالجلد، ويكون أكثر خطورة.

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
