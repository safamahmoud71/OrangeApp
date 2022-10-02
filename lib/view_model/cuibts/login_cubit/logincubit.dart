


import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../../view/component/gnav.dart';
import '../../../view/pages/home/home_screen.dart';
import '../../network/dio_helper.dart';
import '../../network/end_points.dart';
import 'loginstates.dart';

class Login_Cubit extends Cubit <Loginstate> {
  Login_Cubit():super(LoginInitial());

  static Login_Cubit get(context) => BlocProvider.of(context);
  TextEditingController emaillogin = TextEditingController();
  TextEditingController passlogin = TextEditingController();

  void login(context ) {
    var user =
        {
          "email":emaillogin.text,
          "password" : passlogin.text
        };
    DioHelper.postData(url: loginEndPoint, data: user).then((value) {
      print(value.data);
      print(value.statusCode);
      if (value.statusCode==200)
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Layout()));
          showTopSnackBar(
            context,
            CustomSnackBar.success(
              message:
              "Login is successful",
            ),
          );
        }


    });

  }
  bool ispressed = true ;
  showPassword(){
    ispressed=! ispressed;
    emit(ShowPassword());
  }



}