import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class a_EyeScreen extends StatelessWidget {
  const a_EyeScreen({Key? key}) : super(key: key);

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
                //crossAxisAlignment: CrossAxisAlignment.end,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('مقدمة عن اصابات العين',
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
                        image: AssetImage("assets/images/images.jpg"),
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
لا يمكن - في الغالب - معرفة مدى خطورة إصابة العين وتحديدها؛ حيث إن بعض المشكلات، مثل انفصال الشبكية، لا يمكن تشخيصها إلا بواسطة الطبيب. وبعض إصابات العين قد تؤدي إلى ارتفاع ضغط العين، أو حدوث نزيف بسيط لا يمكن تحديده، والسيطرة عليه إلا بعد حدوث أضرار بالغة في العين، قد تؤدي إلى فقدان البصر. لذا؛ فإن من الضروري عند حدوث أي إصابة بالعين استشارة الطبيب على الفور، حتى لو كانت الإصابة بسيطة.                          ''',
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
