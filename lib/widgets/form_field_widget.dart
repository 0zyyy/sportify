import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  final String labelText;
  bool? obscure;
  FormFieldWidget({
    super.key, required this.labelText,this.obscure = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        obscureText: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF4F4F4),
          labelText: labelText,
          labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
        ),
      ),
    );
  }
}