import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class a_DrownScreen extends StatelessWidget {
  const a_DrownScreen({Key? key}) : super(key: key);

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
                    child: Text('تعريف الغرق',
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
                        image: AssetImage("assets/images/drownn1.jpg"),
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
الغرق هو عملية المعاناة من إعاقة تنفسية من الغمر/ الإغراق في السائل. وتصنف نتائج الغرق على أنها وفاة ومراضة وليس اعتلال. والمصطلحات المتفق عليها ضرورية لوصف المشكلة وإتاحة إجراء مقارنات فعالة لاتجاهات الغرق. وعليه، ينبغي استخدام هذا التعريف للغرق الذي اعتمده المؤتمر العالمي المعني بالغرق لعام 2002 على نطاق واسع
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
