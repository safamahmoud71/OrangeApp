
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sesion_2_greek/model/grade_model.dart';
import 'package:sesion_2_greek/model/universtiy_model.dart';
import 'package:sesion_2_greek/view/pages/login.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../token.dart';

import '../../network/dio_helper.dart';
import '../../network/end_points.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  static SignupCubit get(context) => BlocProvider.of(context);
  TextEditingController emailsignup = TextEditingController();
  TextEditingController passsignup1 = TextEditingController();
  TextEditingController passsignup2 = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phonenumber = TextEditingController();

  Universtiy_Model ? universtiy_model;

  Grade_Model ? grade_model;

  void Uni_Data() {
    DioHelper.getData(url: universityEndPoint, token: token).then((value) {
      universtiy_model = Universtiy_Model.fromJson(value.data);
      print(universtiy_model!.code);
      emit(GetUniData());
    });}
    void Grade_Data() {
      DioHelper.getData(url: gradeEndPoint, token: token).then((value) {
        grade_model = Grade_Model.fromJson(value.data);
        print(grade_model!.code);
        emit(GetGradeData());
        });}

      void SignUp(context) {
        var user =
        {

          "email": emailsignup.text,
          "password": passsignup1.text,
          "password" : passsignup2.text,
          "name": name.text,
          "gender" : "f",
          "gradeId" : "1",
          "universityId": "1",
          "phoneNumber": phonenumber.text,

        };

        DioHelper.postData(url: registerEndPoint, data: user).then((value) {
          print(value.data);
          print(value.statusCode);
          if (value.statusCode == 200) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login_Screen()));
            showTopSnackBar(
              context,
              CustomSnackBar.success(
                message:
                "SignUP is successful",
              ),
            );
          }
        });
      }

      String currentUni = "AUC";
      void selectUniItem(item) {
        currentUni = item;
        emit(SelectItem());
      }
  String currentgrade= "Admin";
  void selectGradeItem(item) {
    currentgrade= item;
    emit(SelectItem());
  }
  bool ispressed1 = true ;
  showPassword1(){
    ispressed1=! ispressed1;
    emit(ShowPassword1());
  }
  bool ispressed2 = true ;
  showPassword2(){
    ispressed2=! ispressed2;
    emit(ShowPassword2());
  }
  void GetAllData(){
    Grade_Data();
    Uni_Data();
  }
    }




