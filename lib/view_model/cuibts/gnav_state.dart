part of 'gnav_cubit.dart';

@immutable
abstract class GnavState {}

class GnavInitial extends GnavState {}
class IndexChanged extends GnavState{}