import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sesion_2_greek/model/terms_model.dart';
import 'package:sesion_2_greek/token.dart';
import 'package:sesion_2_greek/view_model/network/dio_helper.dart';
import 'package:sesion_2_greek/view_model/network/end_points.dart';

part 'terms_state.dart';

class TermsCubit extends Cubit<TermsState> {
  TermsCubit() : super(TermsInitial());
  String ? termsData;
  Terms_Model ? terms_model;
  void GetTermsData ()
  {
    DioHelper.getData(url: termsEndPoint, token:token).then((value)
    {
      terms_model = Terms_Model.fromJson(value.data);
      termsData = terms_model!.data!.terms;
      emit(TermsDataState());
    });
  }

}
