import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class e_BitesScreen extends StatelessWidget {
  const e_BitesScreen({Key? key}) : super(key: key);

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

                    SizedBox(height: 100,),

                    Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.only(top: size.height * .12,
                          left: size.width * .1,
                          right: size.width * .02),
                      height: size.height * .48,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/bites3.png"),
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
👈لسعة النحل: 
-قم بإزالة المتبقي من اللسعة باستخدام شاش معقم، مع تجنب الضغط على المنطقة المصابة، أو استخدام الملقط.
-غسل موضع اللسعة بالماء، والصابون.
- وضع الثلج؛ للحد من التورم.
- تجنب حك موضع اللسعة؛ لأن ذلك قد يزيد من التورم. 
- تناول بعض مسكنات الأم، مثل: الاسيتامينوفين(بانادول) أو ايبوبروفين؛ للتخفيف من حدة الألم. 
- عند انتقال التورم الي أماكن أخرى من الجسم، أو عند شعور المصاب بصعوبة في التنفس، أو الغثيان، 
أو الدوخة، فيجب التوجه للطوارئ على الفور؛ لأن المصاب يعاني رد فعل تحسسيًّا شديدًا تجاه لسعات النحل، ويجب إسعافه على الفور. 
👈لدغة العنكبوت:
-القيام بغسل موضع اللدغة بالماء، والصابون. 
-وضع الثلج؛ لتقليل التورم.
-عند الشك بالتعرض للدغة عنكبوت أسود، أو أحمر، فيجب طلب المساعدة الطبية، أو نقل المصاب 
إلى أقرب مركز طوارئ.

👈لدغة الثعبان:
-طلب الإسعاف فورًا.
-تهدئة المصاب؛ فهذا يمكن أن يبطئ انتشار السم في الجسم. 
-غسل اللدغة بالماء والصابون على الفور. 
-إبقاء المنطقة المصابة باللدغة أسفل مستوى القلب.
-تغطية مكان اللدغة بشاش نظيف. 
-تجنب لمس، أو الضغط بالقرب من المنطقة المصابة. 
-تجنب جرح المنطقة المصابة، أو مص السم. 
-عدم وضع الثلج، أو غمر الجرح بالماء. 
-تجنب شرب المشروبات التي تحتوي على الكافيين. 
-يجب تذكر شكل الثعبان ولونه؛ فهذا يساعد على علاج اللدغة.

👈لدغة العقرب: 
-طلب الإسعاف فورًا. 
-وضع الثلج بشكل مباشر على المنطقة المصابة، ولكن تجنب غمر الطرف المصاب في الماء البارد. 
-تهدئة المصاب. 
-عدم أخذ المهدئات.
-إذا كان بالاستطاعة، يفضل أخذ العقرب إلى مركز الطوارئ، مع أخذ الحيطة، والحذر.

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
