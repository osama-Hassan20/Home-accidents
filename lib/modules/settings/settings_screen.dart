import 'package:accidents/modules/settings/widget/card_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/doc_app/cubit/cubit.dart';
import '../../layout/doc_app/cubit/states.dart';
import '../../shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../shared/components/constant.dart';




class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
   final double radius = 20;

   UniqueKey? keyTile;
  bool isExpanded = false;

  void expandTile() {
    setState(() {
      isExpanded = true;
      keyTile = UniqueKey();
    });
  }

  void shrinkTile() {
    setState(() {
      isExpanded = false;
      keyTile = UniqueKey();
    });
  }

  @override


  Widget build(BuildContext context) {

    return BlocConsumer<DocCubit, DocStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = DocCubit.get(context);
          Color colorText = cubit.isDark ? Colors.white : Colors.black;
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(radius),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      CardThemeItem(child:buildText(context, 'المجموعات المشتركة',
                              'عمل مجموعات  ١٠.٩.٨ المقيدين بالفرقة الرابعة بكلية تمريض جامعة قناة السويس لدفعة 2024',
                              colorText,),),
                      const SizedBox(height: 20,),
                      CardThemeItem(child: buildText(context, 'الكلية/المؤسسة',
                              '''كلية التمريض بجامعة قناة السويس.

أنشئت كلية التمريض بالإسماعيلية بعد صدور القرار الجمهوري رقم 276 عام 2006م

وبدأت الدراسة الفعلية بها في ذات العام وذلك تلبية لاحتياجات المنطقة للفئات التمريضية والتي تمثل قطاعا كبيرا وهاما في مجال الرعاية الصحية.

وتقع الكلية داخل حرم جامعة قناة السويس بالكيلو 4.5 بالطريق الدائري بمحافظة الإسماعيلية.


 الرؤية والرسالة
الرؤية :

تتطلع كلية التمريض جامعة قناة السويس إلي الريادة والتميز في التعليم التمريضي لمواكبة تطور الرعاية الصحية محليا وإقليميا.

الرسالة :

 تخريج أخصائي تمريض مؤهل وقادر على تقديم رعاية صحية متميزة من خلال اكتساب جدارات تعليمية وبحثية وخدمية تلبى احتياجات المجتمع في إطار مهني وأخلاقي.
                          ''', colorText)),
                      const SizedBox(height: 20,),
                      CardThemeItem(child: buildText(context, 'المشرفين علي التطبيق',
                              '''١- د/ لميس محمود، مدرس بقسم تمريض صحة الأسرة والمجتمع 
٢-د/ زينب فكري، معيد بقسم تمريض صحة الأسرة والمجتمع
٣-د/ الشمياء متحت، معيد بقسم إدارة التمريض
                          ''', colorText)),
                      const SizedBox(height: 20,),

                      CardThemeItem(child: buildText(context, 'حول المطور',
                              '''Created by Eng/Osama hassan  
Mobile application developer(Flutter)
Graduate of Faculty of Computer and Informatics Suez Canal University class of 2023
Contact info
Phone: 01102577997
Email: osama.hassan210320@gmail.com
                              ''',
                              isEnglish: false,
                              colorText)),
                      const SizedBox(height: 20,),

                      defaultButton(
                        function: () {
                          cubit.currentIndex = 0;
                          signOut(context);
                        },
                        text: 'logout',
                      ),

                    ],
                  ),
                ),
              ),
            ),
          );
        }

    );
  }

  Widget buildText(BuildContext context,String name , String title,Color color,{bool isEnglish = true})
  {
    var size = MediaQuery.of(context).size;

    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(

        key: keyTile,
        initiallyExpanded: isExpanded,
        childrenPadding: const EdgeInsets.all(16).copyWith(top: 0),
        title: Text(
          name,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500,color: color),
        ),
        children: [
          Text(
            title,
            style: TextStyle(fontSize: size.width *0.045, height: 1.4,color: color),
            textAlign: isEnglish ? TextAlign.start : TextAlign.end,
          ),

        ],

      ),
    );
  }

}

