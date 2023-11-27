import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class a_NoseScreen extends StatelessWidget {
  const a_NoseScreen({Key? key}) : super(key: key);

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
                //crossAxisAlignment: CrossAxisAlignment.end,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('تعريف جروح الانف',
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
                        image: AssetImage("assets/images/nose2.png"),
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
 يعرف جرح الأنف على أنه أي نوع من الإصابات التي تؤثر على أنسجة الأنف، ويمكن أن تحدث نتيجة للعديد من الأسباب، مثل الحوادث المنزلية أو الرياضية أو الحوادث المرورية أو الاشتباكات. قد يتضمن جرح الأنف كسرًا أو تشوهًا في هيكل الأنف، وجروحًا في الجلد أو الأنسجة المحيطة، وقد يتسبب أيضًا في نزيف الأنف. من بين الأعراض الشائعة لجرح الأنف تورم الوجه والأنف، والألم، والنزيف، وصعوبة التنفس، والكدمات، والخدوش أو الجروح الظاهرة على الجلد المحيط بالأنف.                          ''',
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
