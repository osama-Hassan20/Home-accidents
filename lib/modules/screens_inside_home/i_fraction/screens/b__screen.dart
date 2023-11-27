import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class b_FractionScreen extends StatelessWidget {
  const b_FractionScreen({Key? key}) : super(key: key);

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
                      child: Text('الاعراض',
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
👈تختلف أعراض كسر العظام بحسب المنطقة المصابة، وشدتها، ووفقًا للعظم المصاب، بالإضافة إلى عمر المريض وصحته العامة، وكذلك شدة الإصابة. ومع ذلك، فإن الأعراض الشائعة هي:
•	ألم شديد، وتورم، وكدمات.
•	تلون الجلد حول المنطقة المصابة.
•	قد يحدث انحناء بالمنطقة المصابة نتيجة للكسر.
•	عدم القدرة على تحريك المنطقة المصابة.
•	يصاحب الكسر المفتوح نزيف نتيجة لتهتك الجلد.
•	إذا حدث الكسر للعظام الكبيرة، مثل: عظمة الفخذ، أو الحوض، فقد تحدث أعراض أخرى، مثل: شحوب بالجلد، والشعور بالغثيان، والإغماء.

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
