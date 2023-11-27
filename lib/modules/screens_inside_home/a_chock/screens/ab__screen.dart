import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class ab_ChockScreen extends StatelessWidget {
  const ab_ChockScreen({Key? key}) : super(key: key);

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
                    Text('تعريف الاختناق',
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
                          image: AssetImage("assets/images/chock1.jpg"),
                          fit: BoxFit.contain,

                        ),

                      ),
                      //child: BookInfo(size: size,)
                    ),

                    Center(
                      child: Text(
                        'يحدث الاختناق عند دخول جسم إلى الحلق أو القصبة الهوائية يؤدي إلى سد مجرى الهواء وعادةً ما يكون سبب إصابة البالغين به قطعة من الطعام\n أما الأطفال الصغار، فكثيرًا ما يختنقون بأجسام صغيرة \n\nالاختناق يهدد الحياة، فهو يقطع الأكسجين عن الدماغ. لذا يجب تقديم الإسعافات الأولية بأسرع ما يمكن عند تعرضك أنت أو شخص آخر للاختناق',
                        textAlign:TextAlign.end ,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: color,
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
