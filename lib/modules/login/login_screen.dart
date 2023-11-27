import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/components/components.dart';
import '../../shared/components/constant.dart';
import '../../shared/network/local/cache_helper.dart';
import '../register/register_screen.dart';
import '../splash_screen/splash_screen.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';



class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit , LoginStates>(

        listener: (BuildContext context, Object? state) {
          if (state is LoginSuccessState)
          {
            if(state.loginModel.status == true)
            {
              print(state.loginModel.message);
              print(state.loginModel.data?.token);

              ShowToast(
                  text: state.loginModel.message!,
                  state: ToastState.SUCCESS
              );
              CacheHelper.saveData(
                key: 'token',
                value: state.loginModel.data?.token,
              ).then((value) {
                token = state.loginModel.data!.token!;
                navigateAndFinish(context, SplashScreen());
              });


            }else{
              print(state.loginModel.message);
              ShowToast(
                  text:state.loginModel.message! ,
                  state: ToastState.ERROR
              );
            }
          }
        },
        builder: (BuildContext context, state)
        {
          var size = MediaQuery.of(context).size;
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,

            ),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding:const EdgeInsets.all(20),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LOGIN',
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                              color: Colors.black
                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),
                        defaultFormField(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            label: 'Email Address',
                            prefix: Icons.email_outlined,
                            validate: (String? value){
                              if(value!.isEmpty){
                                return'please enter your email address';
                              }
                            }
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        defaultFormField(
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                            label: 'Password',
                            prefix: Icons.lock_outline,
                            onSubmit: (value){
                              if(formKey.currentState!.validate()){
                                LoginCubit.get(context).userLogin(
                                  email: emailController.text,
                                  password: passwordController.text,);
                              }
                            },
                            suffix: LoginCubit.get(context).suffix,
                            isPassword: LoginCubit.get(context).isPassword,
                            suffixPressed: (){
                              LoginCubit.get(context).changePasswordVisibility();
                            },
                            validate: (String? value){
                              if(value!.isEmpty){
                                return'password is too short';
                              }
                            }
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: ConditionalBuilder(
                            condition: state is! LoginLoadingState,
                            builder:(context) => defaultButton(
                              function:(){

                                if(formKey.currentState!.validate()){
                                  LoginCubit.get(context).userLogin(
                                    email: emailController.text,
                                    password: passwordController.text,);
                                }

                              },
                              text: 'login',
                              isUpperCase: true,

                            ),
                            fallback:(context) => CircularProgressIndicator() ,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account',
                              style: TextStyle(
                                fontSize: size.width *0.04
                              ),
                            ),
                            defaultTextButton(
                              function: (){

                                navigateTo(context, RegisterScreen());
                              },
                              text: 'register',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),// Spacer(),
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              navigateAndFinish(context, SplashScreen());
                            },
                            child: Container(
                              width: size.width *.3,
                              height: size.width * .15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black12,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('تخطي',
                                    textAlign:TextAlign.center ,

                                    style: TextStyle(
                                        fontWeight:FontWeight.bold,
                                        fontSize: size.width *.07,
                                        color: Colors.black
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}
