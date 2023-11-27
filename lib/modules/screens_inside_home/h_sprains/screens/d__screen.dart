import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class d_SprainsScreen extends StatelessWidget {
  const d_SprainsScreen({Key? key}) : super(key: key);

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
                      child: Text('الإسعافات الأولية',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: color,

                        ),
                        textAlign:TextAlign.center ,
                      ),
                    ),

                   SizedBox(height: 100,),

                    Center(
                      child: Directionality(
                        textDirection: TextDirection.rtl,

                        child: Text(
                          '''
• أرح ساقك: يجب عليك التوقف فورًا عن النشاط الذي تسبب في الإصابة والجلوس وإراحة الكاحل.                          ''',
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
                          image: AssetImage("assets/images/sprains4.png"),
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
• اجلس في وضعية تكون فيها ساقك مرفوعة عن مستوى الأرض.
• استخدم الثلج لتقليل التورم: برّد الكاحل باستخدام كيس ثلج لتقليل الألم والتورم، وذلك عن طريق لف كيس من الثلج (أو أي كيس طعام مجمد) بقطعة قماش وضعها على الكاحل. 
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
                          image: AssetImage("assets/images/sprains5.png"),
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
• لا تضع الثلج مباشرة على الجلد، لانه سيسبب حروقًا باردة، اترك الثلج في مكانه لمدة 20 دقيقة.
• إذا كنت تعاني من مرض الأوعية الدموية أو السكري أو انخفاض الإحساس، فتحدث مع طبيبك قبل وضع الثلج. 
• استخدم شريط ضاغط للحد من التورم. 

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
                          image: AssetImage("assets/images/sprains6.png"),
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
• ارفع الكاحل عن مستوى الأرض بحيث يكون أعلى من الورك لمنع التورم واحرص على حصولك 
على وضعية مريحة. 
• إذا بدت الإصابة خطيرة، اتصل بالنقل الإسعافي واذهب إلى المشفى.
 
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
