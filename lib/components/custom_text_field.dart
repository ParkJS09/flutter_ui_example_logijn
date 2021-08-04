import 'package:flutter/material.dart';
import 'package:flutter_login/pages/size.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;

  const CustomTextFormField(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(
          height: small_gap,
        ),
        TextFormField(
          //1. 느낌표는 null을 허용하지 않음
          validator: (value) => value.isEmpty ? "Please enter some text" : null,
          //2. TextFormField가 비밀번호 입력이면 * 처리
          obscureText: text == "Password" ? true : false,
          decoration: InputDecoration(
              hintText: "Enter $text",
              enabledBorder: OutlineInputBorder(
                  //3. 기본 TextFormField 디자인
                  borderRadius: BorderRadius.circular(20)),
              focusedBorder: OutlineInputBorder(
                  //4. 터치 시 TextFormField 디자인
                  borderRadius: BorderRadius.circular(20)),
              errorBorder: OutlineInputBorder(
                  //5. 에러 발생시 TextFormField 디자인
                  borderRadius: BorderRadius.circular(20)),
              focusedErrorBorder: OutlineInputBorder(
                  //6. 에러 발생 후 터치 시 TextFormField 디자인
                  borderRadius: BorderRadius.circular(20))),
        )
      ],
    );
  }
}
