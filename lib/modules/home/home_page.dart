import 'package:flutter/material.dart';
import 'package:splitit/modules/login/models/user_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name!),
      ),
    );
  }
}
