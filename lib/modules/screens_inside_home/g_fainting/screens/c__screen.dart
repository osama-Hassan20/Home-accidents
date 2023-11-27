import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class c_FaintingScreen extends StatelessWidget {
  const c_FaintingScreen({Key? key}) : super(key: key);

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
                      child: Text('الوقاية',
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
-تناول وجبات منتظمة وتجنب تفويت الوجبات إذا كنت تشعر بالجوع. 
- تأكد من شرب كمية كافية من الماء كل يوم.
- تناول وجبة خفيفة صحية بين الوجبات. 
-إذا اضطررت إلى الوقوف في مكان واحد لفترة طويلة، فتأكد من تحريك ساقيك وعدم قفل ركبتيك ويمكنك هز ساقيك. 
-فإذا كنت في مكان حار ومزدحم بالبشر وبدأت تشعر بالدوار، فهذا جسدك يحاول أن يقول لك أن تخرج من هذا المكان.
-إذا شعرت بالدوخة، حاول أن تستلقِ لمدة 15 دقيقة، وعند الشعور بالتحسن يمكنك القيام ولكن ببطء.


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
