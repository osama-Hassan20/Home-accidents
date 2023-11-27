import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget defaultButton ({
  double width = double.infinity ,
  Color background = Colors.blue,
  bool isUpperCase = true,
  required VoidCallback function,
  required String text,

}) =>
    Container(

      width: width,

      child: MaterialButton(
        onPressed: function ,
        child: Text(
          isUpperCase ? text.toUpperCase(): text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: background,
      ),
    ) ;



//******************************************************************************



Widget defaultTextButton({
  required VoidCallback? function,
  required String text,
})=>TextButton(
  onPressed: function,
  child: Text(text.toUpperCase()),
);



//******************************************************************************



Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  ValueChanged? onSubmit,
  bool isPassword = false ,
  ValueChanged? onChanged,
  GestureTapCallback? onTap,
  FormFieldValidator<String>? validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  VoidCallback? suffixPressed,
  bool isClickable = true,
  bool underLine = true,
}) =>
    TextFormField(

      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted:onSubmit,
      onChanged: onChanged,
      validator:validate,
      onTap: onTap,
      enabled: isClickable,

      decoration: InputDecoration(
        labelText: label,

        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix !=null ? IconButton(
          onPressed:  suffixPressed,

          icon: Icon(
            suffix,
          ),
        ) :null,
        border: underLine?   UnderlineInputBorder() : InputBorder.none,
      ),
    );



//******************************************************************************



void navigateTo(context ,widget ) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget ,
  ),
);



//******************************************************************************



void navigateAndFinish(context ,widget ) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => widget ,
  ),
      (route) {
    return false;
  },
);



//******************************************************************************



void ShowToast({
  required String text,
  required ToastState state,
}) => Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor:chooseToastColor(state),
    textColor: Colors.white,
    fontSize: 16.0
);

enum ToastState {SUCCESS , ERROR , WORNING}

Color? chooseToastColor (ToastState state)
{
  Color color;
  switch(state)
  {
    case ToastState.SUCCESS:
      color = Colors.green;
      break;
    case ToastState.ERROR:
      color = Colors.red;
      break;
    case ToastState.WORNING:
      color = Colors.amber;
      break;
  }
  return color;
}



//******************************************************************************



