
import 'package:accidents/layout/doc_app/cubit/states.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../modules/home/home_screen.dart';
import '../../../modules/info/info_screen.dart';
import '../../../modules/settings/settings_screen.dart';
import '../../../shared/network/local/cache_helper.dart';

class DocCubit extends Cubit <DocStates>
{
  DocCubit(): super(DocInitialState());

  static DocCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<TabItem> bottomItems =[
    TabItem(
      icon:Icon(
        Icons.home_filled,
      ),

    ),

    TabItem(
      icon:Icon(
        Icons.info_outline,
      ),

    ),
    TabItem(
      icon:Icon(
        Icons.settings,
      ),

    ),
  ];

  List<Widget> screens=
  [
    HomeScreen(),
    InfoScreen(),
    SettingsScreen(),
  ];

  void changeBottomNavBar(int index)
  {
    currentIndex = index;
    emit(DocChangeBottomNavState());
  }




  bool isDark = false;

  void changeAppMode({bool? fromShared}) {
    isDark = ! isDark;
    emit(DocAppChangeModeState());
    if (fromShared != null) {
      isDark = fromShared;
    } else {
      isDark = !isDark;
    }
    CacheHelper.putData(key: 'isDark', value: isDark).then((value) {
      emit(DocAppChangeModeState());
    });
  }
}