//POST
//UPDATE
//DELETE

//https://newsapi.org/
// v2/top-headlines?
// country=eg&category=business&apiKey=5d9b02d51b0446f3b5095e818afbdb1e

//GET

// https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=5d9b02d51b0446f3b5095e818afbdb1e


//base url : https://newsapi.org/
//method (url) : v2/everything?
//queries : q=Apple&from=2022-11-09&sortBy=popularity&apiKey=5d9b02d51b0446f3b5095e818afbdb1e



import 'package:bloc/bloc.dart';

import '../../modules/login/login_screen.dart';
import '../network/local/cache_helper.dart';
import 'components.dart';

void signOut(context) {
  CacheHelper.removeDate(key: 'token',).then((value) {
    if(value!){
      navigateAndFinish(context, LoginScreen());
    }
  });
}

void printFullText(String text){
  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

String? token ;

