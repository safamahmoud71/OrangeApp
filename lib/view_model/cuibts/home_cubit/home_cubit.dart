import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sesion_2_greek/view/pages/home/home_screen.dart';
import 'package:sesion_2_greek/view/pages/settings/setting_home.dart';
import 'package:sesion_2_greek/view_model/cuibts/home_cubit/home_states.dart';

import '../../../view/pages/home/News/news.dart';

class HomeCubit extends Cubit<HomeSates>
{
  HomeCubit():super(IntiHomeState());
  static HomeCubit get(context)=> BlocProvider.of(context);

  List<Widget> SwapPages = [
    Home_Screen(), News_Screen(), Settings()
  ];
  int currentIndex = 0;

  void changeCurrent(int newIndex){
    currentIndex = newIndex;

  }

}
