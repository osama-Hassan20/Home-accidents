import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class a_BitesScreen extends StatelessWidget {
  const a_BitesScreen({Key? key}) : super(key: key);

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
                    child: Text('تعريف اللدغات',
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
                        image: AssetImage("assets/images/bites1.png"),
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
•	هي إصابة تقوم فيها حشرة ما بثقب سطح الجسم مما يؤدي إلى ثقوب أو جروح ممزقة. وقد يكون هناك دليل على وجود جرح مثل خروج الدم من الجسم او ظهور ثقب في الجلد، وعادة ما يكون محاطًا بمنطقة من الاحمرار والتورم، وغالبًا ما يكون مصحوبًا بألم أو حكة. 
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
