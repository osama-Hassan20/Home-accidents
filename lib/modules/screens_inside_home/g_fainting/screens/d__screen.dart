import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class d_FaintingScreen extends StatelessWidget {
  const d_FaintingScreen({Key? key}) : super(key: key);

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
                      child: Text('الاسعافات الاوليه',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: color,

                        ),
                        textAlign:TextAlign.center ,
                      ),
                    ),


                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
1.يجب أن نقوم بفرد المريض على ظهره ونضع يد على جبهة المريض واليد الثانية أسفل الذقن ونقوم برفع رأسه حتى لا يبلع لسانه. 
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
                    Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/fainting2.png"),
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
2.نبه المريض بالكلام " تكلم بصوت عالٍ وأنت تهزه ".
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

                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''3.قم بجعل المريض يشعر بالألم عن طريق قرص شحمه الأذن.
*وفى حالة عدم افاقة المريض قم بتنبيه المريض عن طريق تكمله الخطوات الأتية:
-باستخدام انامل ثلاثة من أصابعك قم بوضعهم على أحد جانبي الحنجرة على الشريان السُباتي حتى تشعر 
بالنبض.
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
                    Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/fainting3.png"),
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
-وقم بإنزال أحد جانبي وجهك بجانب فم المريض حتى تشعر بالشهيق والزفير للمريض مع ملاحظة 
منطقة الصدر تعلو وتهبط مما يدل على تنفس المريض. 
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
                    Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/fainting4.png"),
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
-في حالة وجود نبض ووجود تنفس طبيعي، قم بتأمين وصول الدم إلى المخ عن طريق رفع رجلين المريض بزاوية 30 درجة للأعلى لمدة خمس دقائق.
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
                    Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/fainting5.png"),
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
👈في حالة عدم الافاقة يجب وضع المريض في وضعية الافاقة ومن المفترض أن يفوق المريض، وهي كالتالى:
•	ان يجلس المنقذ في الجهة اليمنى للمريض.
•	أن يقوم المنقذ بوضع اليد اليمنى للمريض وهي "اليد القريبة من المنقذ" بزاوية 90 درجة على الأرض.
•	ثم يقوم المنقذ بثني ركبة المريض اليسرى أى الرجل البعيدة عن المنقذ.
•	ثم قم بوضع ظهر يد المريض الشمال أسفل خد المريض اليمين.
•	ثم قم بقلب المريض على جنبه الأيمن.
•	ثم ارجع رأسه للوراء والتأكد من تنفس المريض.
•	وقم بطلب الإسعاف.


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
