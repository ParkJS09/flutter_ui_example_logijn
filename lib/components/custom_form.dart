import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_text_field.dart';
import 'package:flutter_login/pages/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      //글로벌 Key를 Form 태그에 연결하여 해당 Key로 Form의 상태를 관리
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField("Email"),
          SizedBox(
            height: medium_gap,
          ),
          CustomTextFormField("Password"),
          SizedBox(
            height: large_gap,
          ),
          TextButton(
            onPressed: () {
              if(_formKey.currentState.validate()){
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
