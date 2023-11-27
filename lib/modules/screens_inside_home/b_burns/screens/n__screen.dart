import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class n_BurnsScreen extends StatelessWidget {
  const n_BurnsScreen({Key? key}) : super(key: key);

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
                      child: Text('الحروق الكيميائية',
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
                          image: AssetImage("assets/images/burns10.png"),
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
تحدث الحروق الكيميائية أو المعروفة باسم الحروق الكاوية، عندما يتلامس الجلد مع حمض أو قاعد أو قلوي أو منظفات أو مذيبات أو الأبخرة التي تنتجها هذه المواد المسببة للتآكل، وهي تؤثر بشكل شائع على العينين والوجه والذراعين والساقين، ولكنها يمكن أن تسبب أضرارًا خطيرة للفم والحلق إذا تم تناول هذه المواد.

👈الاسعافات الأولية للحروق بالمواد الكيميائية:
1_ إزالة المادة الكيميائية التي تسببت في الحرق
 2_شطف الجلد تحت الماء الجاري لمدة 10 إلى 20 دقيقة أو غسيل العين باستمرار لمدة 20 دقيقة على الأقل قبل طلب رعاية الطوارئ وذلك في حالة ملامسة مادة كيميائية للعينين.
3_كما يحب إزالة أي ملابس أو مجوهرات ملوثة بالمادة الكيميائية و لف المنطقة المحروقة بضمادة جافة معقمة أو قطعة قماش نظيفة إن أمكن و يمكن تناول مسكنات الآلام المتاحة دون وصفة طبية إذا كان الحرق سطحيًا كما يجب أن الذهاب إلى غرفة الطوارئ فورًا إذا كان الحرق أكثر خطورة.

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
