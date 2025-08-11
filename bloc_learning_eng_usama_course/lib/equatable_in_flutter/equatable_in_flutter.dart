import 'package:bloc_learning_eng_usama_course/equatable_in_flutter/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EquatableInFlutter extends StatelessWidget {
  EquatableInFlutter({super.key});

  UserModel user1 = UserModel(1, "Abdelrhman");
  UserModel user2 = UserModel(1, "Abdelrhman");

  @override
  Widget build(BuildContext context) {
    print(user1 == user2);
    return Scaffold();
  }
}
