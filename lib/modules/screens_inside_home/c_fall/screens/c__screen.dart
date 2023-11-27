import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class c_FallScreen extends StatelessWidget {
  const c_FallScreen({Key? key}) : super(key: key);

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
                      child: Text('أعراض إصابات السقوط للأطفال',
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
                          image: AssetImage("assets/images/fall3.png"),
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
قد تكون أعراض إصابات السقوط خفيفية وبسيطة في معظم الحالات، ولكن يجب فحص الطفل جيدًا بعد سقوطه للبحث عن أحد الأعراض التالية:
•	وجود كسور في عظام الجمجمة أو العمود الفقري أو اليدين أو القدمين
•	الإصابة بالكدمات في مناطق متفرقة من الجسم
•	تورم في الرأس أو مكان الإصابة
•	وجود جروح في جسم الطفل إثر سقوطه على الأرض، وخصوصًا إذا سقط على أشياء حادة
•	الرغبة الشديدة في النوم، وقد يكون هذا أمرًا طبيعيًا في بعض الحالات للحصول على الراحة والاسترخاء
•	البكاء الشديد أو الصراخ بطريقة مستمرة، بجانب الشعور بالتوتر والغضب وعدم الراحة وخصوصًا في الأطفال الرضع

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
