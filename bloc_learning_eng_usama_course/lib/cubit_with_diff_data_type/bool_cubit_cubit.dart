import 'package:flutter_bloc/flutter_bloc.dart';

class BoolCubitCubit extends Cubit<bool> {
  // give te Cubit bool data type

  BoolCubitCubit() : super(true);
  // initial value is tue

  void male() {
    emit(true);
    // change state to true
  }

  void female() {
    emit(false);
    //change state to false
  }
}
