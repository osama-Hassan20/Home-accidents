import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class c_cutsScreen extends StatelessWidget {
  const c_cutsScreen({Key? key}) : super(key: key);

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
                    Text('اسعاف الجروح',
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
                          image: AssetImage("assets/images/cuts3.png"),
                          fit: BoxFit.contain,
                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),



                    Directionality(
                      textDirection: TextDirection.rtl,

                      child: Text(
                        '''اسعاف الجروح المغلقه''',
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
١- ارفع الذراع أو الساق المصابة بالجروح.
٢- ضع كمادات ثلج أو ماء بارد على منطقة الإصابة.
٣- افحص المصاب جيدا باحثا عن كسور أو إصابات وإذا اشتبهت فى إصابة أحد الأعضاء الداخلية يرسل المصاب فورا للعرض على الطبيب.

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
                        '''خطوات إسعاف الجروح المفتوحة النازفة''',
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
١- ضع غيارا على الجرح.
٢- اضغط على الجرح حتى يتوقف النزيف.
٣- ارفع الذراع أو الساق المصابة بالجرح فوق مستوى القلب.
٤- ضع رباطا ضاغطا.
٥- فى حالة عدم توقف النزيف ضع غيارا آخر واربطه ولا تنزع الغيار السابق.
٦- اضغط عند نقطة معينة (محددة على الأطراف العليا والسفلى).
٧- اضغط على الشريان الرئيسى الذى يمد المنطقة بالدم.
٨- فى حالة النزيف الغزير من جرح مفتوح بالذراع تضغط الشريان العضدى الرئيسى على عظمة الذراع.
٩- فى حالات النزيف الغزير من جرح فى الساق تضغط على الشريان بضغطة على عظام الحوض بعد ذلك انقل المصاب إلى مركز طبى، حتى يمكن خياطة الجرح وإعطاؤه مصل التيتانوس.

✓فى حالة وضع رباط ضاغط على أحد الأطراف تأكد دائما أن أصابع اليدين والقدمين دافئة ويمكن للمصاب تحريكهما.
✓- إذا وجدت أصابع الأطراف آخذة فى البرودة...فخفف من شدة الرباط لتسمح بسريان الدم فى الأطراف وانقل المصاب إلى المستشفى فورا.

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
                        '''إسعاف الجروح المفتوحة الصغرى''',
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
١- اغسل الجرح جيدا بالماء والصابون و يمكن أن يطهر بمحلول مطهر مثل البيتادين.
٢- إذا كان الجرح صغيرا يمكن تركه بدون غطاء، وإذا احتاج الأمر يمكن تغطيته بمشمع لاصق بعد وضع قطعة صغيرة من الشاش.
٣- تأكد أن النزيف توقف.
٤- ابحث عن إصابات فى أماكن أخرى.

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
                        '''إسعاف النزيف المصاحب لكسر مضاعف''',
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
١- ضع غيارا نظيفا أو قطعة ملابس فوق الجرح القطعى والعظمة المكسورة.
٢- ضع كمية كبيرة من الغيارات حول العظمة واربطها برفق برباط ضاغط.
٣- حافظ على ثبات الجزء المصاب بوضع جبيرة مناسبة.
٤- تأكد دائما أن أصابع الأطراف دافئة.
٥- انقل المصاب الى مركز طبى بدون أن تحرك الجزء المصاب.

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
                        '''فى حالة الأجزاء المبتورة''',
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
١- ضع العضو المبتور ( اصبع أو يد أو خلافه ) فى شاش معقم جاف.
٢- لا تضع العضو المبتور فى شاش مبلل.
٣- لا تحاول تنظيفه.
٤- ضع الشاش فى كيس بلاستيك ( أو ما شابه).
٥- ضع الكيس البلاستيك على سطح من الثلج ولا تغمره داخل الثلج.
٦- لا تحاول أخد قرار هل يصلح أو لا يصلح الجزء المبتور فهذا قرار الأخصائى.

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
                        '''فى حالة الجرح الوخزى ''',
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
١- التأكد من أن الشخص في مكان آمن ولا يزال يتنفس بشكل صحيح.
٢- عدم سحب الجسم الغريب الذي يتسبب في الجرح، ولكن تركه في مكانه وتثبيته بضمادة للحد من النزيف.
٣- تنظيف الجرح بالماء والصابون وتغطية الجرح بضمادة نظيفة.

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
