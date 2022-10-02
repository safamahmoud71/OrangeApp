import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sesion_2_greek/model/model_data_lecture.dart';
import 'package:sesion_2_greek/token.dart';
import 'package:sesion_2_greek/view_model/network/dio_helper.dart';
import 'package:sesion_2_greek/view_model/network/end_points.dart';

part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());
  static LectureCubit get(context) => BlocProvider.of(context);
   Lecture_model ? lectureData ;
  void LecturesData()
  {
    DioHelper.getData(url: lectureEndPoint , token: token).then((value)
    {
      lectureData = Lecture_model.fromJson(value.data);
       print(lectureData!.code);
       emit(LectureDataState());
    });
  }
}
