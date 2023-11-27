import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class e_NoseScreen extends StatelessWidget {
  const e_NoseScreen({Key? key}) : super(key: key);

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
                    Text('كسور الانف',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: color
                      ),
                    ),

                    SizedBox(height: 100,),



                    Directionality(
                      textDirection: TextDirection.rtl,

                      child: Text(
                        '''التعريف''',
                        textAlign:TextAlign.start ,

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: color,

                        ),
                      ),

                    ),

                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
كسور الأنف هي من الكسور أكثر شيوعاً في كسور الوجه ، وتكون في الغالب بسبب إصابة حادة تعرض لها الشخص ومصاحبة لكسور أخرى في الوجه . قد تؤدى إلى مشاكل تتطلب عناية طبية متخصصة ، في حين أن الإصابات البسيطة يفضل فيها الطبيب رؤية المصاب بعد اختفاء الورم الذي يصاحب كسور عظمة الأنف                               ''',
                          textAlign:TextAlign.start ,

                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: color,
                          ),
                        ),

                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,

                      child: Text(
                        '''اعراض كسور الانف''',
                        textAlign:TextAlign.start ,

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: color,

                        ),
                      ),

                    ),
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
 - نزيف من الأنف .
 - اللون الأزرق حول منطقة العين .
 - تشوه شكل الأنف ( قد لا يلاحظ إلا بعد اختفاء التورم ) . 
- تورم . 
- صعوبة في التنفس من الأنف .
- ألم .
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
