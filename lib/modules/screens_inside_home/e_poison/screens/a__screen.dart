import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class a_PoisonScreen extends StatelessWidget {
  const a_PoisonScreen({Key? key}) : super(key: key);

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
                    child: Text('تعريف التسمم',
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
                        image: AssetImage("assets/images/poisonn3.jpg"),
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
يعتبر التسمم الغذائي من المشاكل الصحية الشائعة لدى الأطفال، وتماماً مثل البالغين، يحدث نتيجة تناول الطفل طعام أو شراب ملوث بأحد أنواع الجراثيم المسببة للأمراض. لكن، قد يعاني الأطفال من أعراض ومضاعفات أكثر شدة قليلاً
التسمم هو حدوث إصابة أو وفاة نتيجة بلع أدوية أو مواد كيميائية أو سموم أو غازات متنوعة أو استنشاقها أو لمسها أو الحقن بها. لاحظ أن العديد من المواد — مثل الأدوية وأول أكسيد الكربون — تكون سامة فقط بتركيزات أو جرعات أعلى. وتسبب بعض أنواع المنظفات الضرر فقط حال ابتلاعها، في حين يبعث بعضها الآخر غازات/أبخرة سامة أيضًا. والأطفال حساسون بشكل خاص حتى للكميات القليلة من بعض الأدوية والمواد الكيميائية.

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
