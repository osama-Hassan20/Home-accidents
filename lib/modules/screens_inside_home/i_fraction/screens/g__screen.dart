import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class g_FractionScreen extends StatelessWidget {
  const g_FractionScreen({Key? key}) : super(key: key);

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
                      child: Text('الإسعافات الأولية في حالة الاشتباه بوجود كسر في العمود الفقري',
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
                          image: AssetImage("assets/images/fraction10.png"),
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
1)	يتميز بألم حاد في العمود كله وضعف وفقدان الشعور، أو شلل يصيب أحد الأطراف أو أي جزء آخر من الجسم يجب ألا يتحرك المصاب أو يُنقل مخافة أن تتلف الأعصاب أو الحبل الشوكي اطلب سيارة الإسعاف إن أمكن واستعن بثلاثة أشخاص على الأقل.
2)	يجب تثبيت الظهر باستخدام أي شئ يمكن استخدامه كمثبت مثل قطعة كبيرة من الخشب المنبسط كالباب مثلا 
3)	اربط قدمي المصاب معاً من فخذيه وركبتيه وكاحليه، ارفع المصاب إلى الحمالة او قطعة الخشب بحذر حتى لا يتحرك شئ فيه، من المفترض أن يمسك شخص بالرأس وآخر بالساقين، واثنان يدعمان الصدر والحوض، اربطه بالحمالة حتى تصل إلى المستشفى.

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
                          image: AssetImage("assets/images/fraction11.png"),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      //child: BookInfo(size: size,)
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
