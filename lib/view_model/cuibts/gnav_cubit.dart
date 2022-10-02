import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sesion_2_greek/view/pages/home/home_screen.dart';
import 'package:sesion_2_greek/view/pages/news.dart';
import 'package:sesion_2_greek/view/pages/settings/setting_home.dart';


import '../../view/pages/home/News/news.dart';

part 'gnav_state.dart';

class GnavCubit extends Cubit<GnavState> {
  GnavCubit() : super(GnavInitial());
  static GnavCubit get(context) => BlocProvider.of(context);

  List<Widget> pages = [Home_Screen() , News_Screen(), Settings()];
  int currentIndex = 0;

  void changeCurrent(int newIndex){
    currentIndex = newIndex;
    emit(IndexChanged());
  }

}
