import 'logincubit.dart';

abstract class Loginstate {}

class LoginInitial extends Loginstate {}

class LoginCount extends Loginstate {}
class ShowPassword extends Loginstate{}