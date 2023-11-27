import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class c_EyeScreen extends StatelessWidget {
  const c_EyeScreen({Key? key}) : super(key: key);

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
                    Text('الإسعافات الأولية',
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
                        '''في حالة خدوش العين''',
                        textAlign:TextAlign.start ,

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red,

                        ),
                      ),

                    ),

                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
•	يجب غسل العين بالماء النظيف، أو بمحلول ملحي.
•	القيام بالرمش عدة مرات، فقد يساعد ذلك على إخراج ذرات الرمل، أو التراب الصغيرة من العين 
•	لا يجب لمس العينين بأي شيء، أو فركها باليدين، أو محاولة إزالة الجسم الغريب؛ لأن ذلك يؤذي العين.
•	لا يجب ارتداء العدسات اللاصقة حتى تمام الشفاء؛ لأن ارتداءها سوف يؤدي إلى إبطاء الشفاء، ويمكن أن يتسبب في حدوث مضاعفات.
•	لا يجب استخدام القطرة المهدئة للاحمرار؛ لأنها ستكون مؤلمة، ولن تساعد في التئام الخدش.
•	إذا حدث تحسس للعين من الضوء بعد حدوث الخدش، فيجب ارتداء النظارة الشمسية للشعور بالراحه .

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

                    Directionality(
                      textDirection: TextDirection.rtl,

                      child: Text(
                        ''' عند حدوث ضرب في العين''',
                        textAlign:TextAlign.start ,

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red,

                        ),
                      ),

                    ),
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
•	عمل كمادات باردة بلطف لتخفيف الألم والتورم 
•	تجنب القيام بالضغط على العين
•	في حالة اسمرار العين أو الألم الشديد أو اضطراب الرؤية يجب التوجه إلى الطوارئ مباشرة
•	يجب عدم التهاون بضربات العين لأنه يمكن لضربة خفيفة أن تؤدي إلى انفصال بالشبكية وفقدان البصر

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
                    Directionality(
                      textDirection: TextDirection.rtl,

                      child: Text(
                        '''حدوث قطع أو ثقب للعين''',
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
•	يجب تغطية العين بغطاء واقٍ نظيف إلى حين الوصول إلى الطبيب
•	تجنب الضغط على غطاء العين
•	تجنب شطف العين بالماء
•	تجنب القيام بإزالة أي شيء عالق بالعين
•	تجنب القيام بفرك العين أو الضغط عليها
•	عدم تناول الإسبرين، أو أي من الأدوية المضادة للالتهابات لأنها سوف تزيد من النزيف
•	يجب التوجه إلى الطوارئ أو الطبيب على الفور 


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
                    Directionality(
                      textDirection: TextDirection.rtl,

                      child: Text(
                        '''في حالة الحروق الكيميائية للعين''',
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
•	غسل العين على الفور بالماء النظيف
•	يجب معرفة نوع المادة الكيميائية المسببة للإصابة وإبلاغ الطبيب بها لأن بعض المواد تؤذي العين أكثر من غيرها
•	التوجه إلى الطبيب مباشرة لفحص العين

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
