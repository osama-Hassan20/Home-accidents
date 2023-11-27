import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class d_StrangulationScreen extends StatelessWidget {
  const d_StrangulationScreen({Key? key}) : super(key: key);

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
                      child: Text('الاسعافات الأولية للخنق',
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
1 . قم بإزالة أي انقباض حول عنق المصاب بسرعة. 
2 .إذا كان المصاب معلقًا ، ادعم جسده أثناء تخفيف الانقباض. اعلم أن الجسد سيكون ثقيلًا جدًا إذا كان فاقدًا للوعي ، وأزل بسرعة أي انقباضات حول رقبة المصاب. 
3 . اتصل برقم ١٢٣ للحصول على مساعدة الطوارئ ، حتى لو بدا أنه يتعافى تمامًا. 
4 . راقب وسجل علاماته الحيوية على مستوى الاستجابة والتنفس والنبض حتى وصول المساعدة.

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
