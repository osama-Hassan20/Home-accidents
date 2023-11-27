import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class f_NoseScreen extends StatelessWidget {
  const f_NoseScreen({Key? key}) : super(key: key);

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
                    Text('الإسعافات الاوليه لكسور الانف',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: color
                      ),
                    ),

                    SizedBox(height: 100,),



                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
- طمأنة المصاب ومحاولة جعله هادئاً . 
- حث المصاب على التنفس من فمه 
- إمالة المريض للأمام في وضع الجلوس لمنع الدم من الدخول في مؤخرة الحلق . 
- وضع كمادات باردة لتقليل الورم ، إن أمكن جعل المريض هو من يقوم بحمل الكمادات بنفسه ويضعها على المكان المصاب حتى لا يضغط على الكسر . 
- يمكن إعطاء المريض مسكن للألم.
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
