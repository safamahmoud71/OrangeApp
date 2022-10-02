import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sesion_2_greek/view/pages/home/home_screen.dart';
import 'package:sesion_2_greek/view/pages/home/lecture.dart';
import 'package:sesion_2_greek/view/pages/home/midterms.dart';
import 'package:sesion_2_greek/view/pages/home/News/news.dart';
import 'package:sesion_2_greek/view/pages/notes/notes.dart';
import 'package:sesion_2_greek/view/pages/home/sections.dart';
import 'package:sesion_2_greek/view/pages/settings/setting_home.dart';
import 'package:sesion_2_greek/view/pages/signup.dart';
import 'package:sesion_2_greek/view/pages/login.dart';
import 'package:sesion_2_greek/view/pages/splash.dart';
import 'package:sesion_2_greek/view_model/network/dio_helper.dart';

void main() async{
  await DioHelper.init();

  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
      home: SplashScreen())
  );
}
