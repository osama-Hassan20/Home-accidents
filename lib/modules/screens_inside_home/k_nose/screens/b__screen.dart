import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class b_NoseScreen extends StatelessWidget {
  const b_NoseScreen({Key? key}) : super(key: key);

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
                    Text('نزيف الانف',
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
                          image: AssetImage("assets/images/nosee1.jpg"),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      //child: BookInfo(size: size,)
                    ),



                    Directionality(
                      textDirection: TextDirection.rtl,

                      child: Text(
                        '''التعريف''',
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
النزيف الانفى هو خروج الدم من داخل الأنف ويحدث لكثير من الأطفال صغار السن وكبار السن أيضاً ويكون مثيراً للقلق ولكن فى الاغلب تكون حالة بسيطة ولاتنطوى على خطورة.
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
                        '''اسباب نزيف الانف''',
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
•	ضربات الشمس 
•	ارتفاع ضغط الدم أو بعض أمراض الدم
•	يمكن لحساسية الأنف أو البرد أن تسبب التهابات بالأنف ينتج عنها نزيف الأنف
•	الإصابة المباشرة فى الأنف أو الوجه مثل السقوط على الوجه أو حادث دراجة أو ارتطام الكرة بالوجه 
•	ممكن أن يحدث نزيف الأنف بسبب جفاف الأغشية المخاطية أو تشوهات الأوعية الدموية.
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
