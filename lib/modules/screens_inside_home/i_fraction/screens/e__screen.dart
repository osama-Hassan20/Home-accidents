import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class e_FractionScreen extends StatelessWidget {
  const e_FractionScreen({Key? key}) : super(key: key);

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
                      child: Text('الاسعافات الاوليه للكسر المغلق',
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
                          '''1)	الطلب من المصاب عدم تحريك الطرف المصاب وقد تحتاج لمساعدة الآخرين في ذلك.
2)	تثبيت الجزء المصاب بضماد أو جبيرة تمتد حتى الجزء السليم من الطرف.
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
                      height: size.height * .2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/fraction5.png"),
                          fit: BoxFit.contain,
                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''3)	اطلب المساعدة الطبية عن طريق الاتصال بالإسعاف لتقديم العناية الطبية. ونقل المصاب إلى المشفى بطريقة صحيحة.
4)	عند الشك بوجود صدمة (ظهور تغير في مستوى وعي المصاب 
- تعرق بارد على الجلد والوجه ضيق نفس شحوب في نهايات الأطراف) يمكنك مساعدة المصاب برفع الطرفيين السفليين للأعلى ولاترفع الطرف المكسور في حال ازدياد الألم.

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
                          image: AssetImage("assets/images/fraction6.png"),
                          fit: BoxFit.contain,
                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''5)	افحص الدورة الدموية في الطرف المصاب من خلال ملاحظة لون الجلد ووجود النبض الشرياني بعد منطقة الضماد كل (10دقائق) وفي حال حدوث شحوب أو تورم أو ازرقاق في تلك المنطقة حاول إرخاء الضماد.
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
                          image: AssetImage("assets/images/fraction7.png"),
                          fit: BoxFit.contain,
                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),
                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''6)	لا تحرك المصاب حتى تدعم وتثبت الجزء المصاب -لان تحريك قد يؤدي إلى اختلاطات سيئة مثل إصابة الأوعية الدموية أو الأعصاب أو الأنسجة المجاورة لنهايتي العظم المكسور- إلا إذا كان المصاب معرض للخطر.

7)	لا تسمح للمصاب بالشرب أو الأكل أو التدخين لأنه قد يحتاج إلى تخدير عام عند علاجه.

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
