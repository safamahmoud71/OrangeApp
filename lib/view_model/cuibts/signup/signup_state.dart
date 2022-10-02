part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}
class  SelectItem extends SignupState{}
class  GetUniData extends SignupState{}
class  GetGradeData extends SignupState{}
class ShowPassword1 extends SignupState{}
class ShowPassword2 extends SignupState{}