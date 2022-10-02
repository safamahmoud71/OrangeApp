

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sesion_2_greek/model/setions_model.dart';
import 'package:sesion_2_greek/token.dart';
import 'package:sesion_2_greek/view_model/network/dio_helper.dart';
import 'package:sesion_2_greek/view_model/network/end_points.dart';

part 'sectionscubit_state.dart';

class SectionsCubit extends Cubit<SectionscubitState> {
  SectionsCubit() : super(SectionscubitInitial());
  static SectionsCubit get(context)=> BlocProvider.of(context);
  Sections_Model ? sections_model;
  void SectionsData()
  {
    DioHelper.getData(url: sectionEndPoint, token: token).then((value)
    {
      sections_model = Sections_Model.fromJson(value.data);
      print(sections_model!.code);
      emit(SectionsState());

    });
  }
}
