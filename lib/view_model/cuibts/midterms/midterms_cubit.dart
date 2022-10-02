import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sesion_2_greek/model/midterms_model.dart';
import 'package:sesion_2_greek/view_model/network/end_points.dart';

import '../../../token.dart';
import '../../network/dio_helper.dart';

part 'midterms_state.dart';

class MidtermsCubit extends Cubit<MidtermsState> {
  MidtermsCubit() : super(MidtermsInitial());
  static MidtermsCubit get(context) => BlocProvider.of(context);
  Midterms_Model ? midtermData;
  void MidtermsData()
  {
    DioHelper.getData(url: examsEndPoint, token: token).then((value)
    {
      midtermData = Midterms_Model.fromJson(value.data);
      print(value.data);
      emit(MidtermDataState());
    });
  }
}
