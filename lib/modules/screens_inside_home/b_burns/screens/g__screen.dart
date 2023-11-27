import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class g_BurnsScreen extends StatelessWidget {
  const g_BurnsScreen({Key? key}) : super(key: key);

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
                      child: Text('للحد من مخاطر الحروق المنزلية الشائعة',
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
                          image: AssetImage("assets/images/burnss1.jpg"),
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
لا تترك أواني الطبخ على الموقد المشتعل دون مراقبة
لا تحمل طفلك أثناء الطبخ على الموقد.
احفظ السوائل الساخنة بعيدًا عن متناول الأطفال والحيوانات.
أبعِد الأدوات الكهربائية عن المياه.
تحقَّقْ من درجة حرارة الطعام قبل تقديمه للطفل. لا تدفئْ زجاجة حليب الطفل في المايكروويف.
إذا وُجِد طفل صغير، فسُدَّ طريقه تجاه مصادر الحرارة مثل المواقد، والشوايات، ومدافئ النار، وأجهزة تدفئة المكان.
قبل وضع الطفل على مقعد السيارة، افحص المقعد للتأكد من عدم وجود أحزمة أو إبزيم ساخن.
افصل المكواة والأجهزة المماثلة عند عدم الاستخدام. خزِّنْها بعيدًا عن متناول الأطفال الصغار.
غطِّ المنافذ الكهربائية غير المستخدمة بأغطية السلامة. أبعِدْ الحبال والأسلاك الكهربائية عن الطريق حتى لا يمضغها الأطفال.
إذا كنتَ تدخِّن، فلا تدخِّنْ في الفراش أبدًا.
تأكَّدْ من تشغيل كاشف الدخان في كل طابق من منزلك. افحصْها وغيِّرْ بطارياتها مرةً سنويًّا على الأقل.
احتفظْ بطفاية حريق في كل طابق من منزلك.
عند استخدام المواد الكيميائية، ارتدِ دائمًا الملابس والنظارات الواقية.
احفظ المواد الكيميائية، والقداحات، وأعواد الثقاب بعيدًا عن متناول الأطفال. استخدِمْ أقفالًا آمِنة. ولا تَستخدِم القداحات التي تشبه الألعاب.
اضبطْ منظِّم درجة حرارة المياه على معدل أقل من 120 درجة فهرنهايت (48.9 درجة مئوية) للحد من الاحتراق بالماء الساخن. 
تحقَّقْ من درجة حرارة مياه الاستحمام بيدك قبل وضع طفلك في حوض الاستحمام.

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
