import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layout/doc_app/cubit/cubit.dart';
import '../../../../layout/doc_app/cubit/states.dart';



class c_NoseScreen extends StatelessWidget {
  const c_NoseScreen({Key? key}) : super(key: key);

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
                    Text('الإسعافات الاوليه لنزيف الانف',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: color
                      ),
                      textAlign:TextAlign.center ,
                    ),

                    Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.only(top: size.height * .12,
                          left: size.width * .1,
                          right: size.width * .02),
                      height: size.height * .48,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/nose.jpg"),
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
٭ اجعل المصاب ينحنى للأمام قليلا أثناء الجلوس أو الوقوف مع تجنب الأستلقاء أو ميل الرأس للخلف لأن ذلك سيتسبب بإبتلاع الدم مسبب قىء وغثيان 
٭ اجعل المصاب يقوم بإمساك الأنف والضغط عليه من الجزء الناعم وليس العظمى من الناحيتين مع تجنب الضغط على جانب واحد فقط حتى لو كان النزيف من جانب واحد وذلك لإحكام الضغط على الشعيرات الدموية 
٭ اجعل المصاب يتنفس من خلال الفم 
٭ يستمر الضغط على الأنف لمدة خمس دقائق عند الأطفال ومن عشرة إلى خمسة عشر دقيقة عند البالغين مع عدم القيام بفك الضغط عن الأنف لإكتشاف ما إذا كان النزيف قد توقف إلا بعد انتهاء الوقت المحدد
٭ يمكن وضع كمادات باردة على الرأس أو اكياس ثلج حول الأنف حيث سيعمل على انقباض الأوعية الدموية ويساعد على إيقاف النزيف
٭ إذا توقف النزيف اغسل الأنف وإذا لم يتوقف قم بتكرار الخطوات السابقة لمدة تصل إلى نصف ساعة وإذا لم يتوقف النزيف عليك التوجه إلى الطواريء على الفور.

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
