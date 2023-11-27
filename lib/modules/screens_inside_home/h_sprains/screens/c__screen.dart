import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class c_SprainsScreen extends StatelessWidget {
  const c_SprainsScreen({Key? key}) : super(key: key);

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
                      child: Text('طرق الوقايا من الالتواء',
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
                          image: AssetImage("assets/images/sprainss1.jpg"),
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
•قم بالإحماء قبل ممارسة التمارين أو ممارسة الرياضة. 
•كن حذرًا عند المشي، أو الجري أو العمل على سطح غير مستوٍ. 
• استخدم دعامة أو شريط دعم الكاحل على الكاحل الضعيف أو الذي سبق له الإصابة. 
•قم بارتداء الأحذية التي تناسب مقاس قدميك والمصنوعة لتناسب نشاطك. 
•قلل من ارتداء الأحذية عالية الكعب. 
•لا تقم بممارسة الرياضة أو المشاركة في الأنشطة التي تكون غير مضطر إلى ممارستها.
• قم بالحفاظ على قوة عضلاتك ومرونتها. 
•قم بممارسة تدريبات الثبات، بما في ذلك تمارين تحقيق التوازن.

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
