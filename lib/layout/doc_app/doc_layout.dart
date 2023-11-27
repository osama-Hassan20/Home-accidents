import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class DocLayout extends StatelessWidget {
  const DocLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DocCubit , DocStates>(
      listener: (context, state){},
      builder: (context, state){
        var size = MediaQuery.of(context).size;

        var cubit = DocCubit.get(context);

        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text(
                  ' حوادث المنازل',
                  style: TextStyle(
                    fontSize: size.width *.06
                  ),
                ),
              ),

              actions: [
                IconButton(
                    onPressed: ()
                    {
                      cubit.isDark = ! cubit.isDark;
                      DocCubit.get(context).changeAppMode();
                      if (kDebugMode) {
                        print(cubit.isDark);
                      }
                    },
                    icon:const Icon(Icons.brightness_4_outlined)
                )
              ],
            ),
            body: cubit.screens[cubit.currentIndex],

            bottomNavigationBar: ConvexAppBar(
              backgroundColor: Colors.grey,

              initialActiveIndex: cubit.currentIndex,
              onTap: (index)
              {
                cubit.changeBottomNavBar(index);
              },
              items: cubit.bottomItems,
              
            ),



          ),
        );
      },

    );
  }
}
