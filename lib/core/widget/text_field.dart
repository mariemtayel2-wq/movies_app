

import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/color_manager.dart';

typedef Validation= void Function(String? value);
typedef Validator= String? Function(String? value);

class CustumTextFieled extends StatelessWidget{
  CustumTextFieled({
    this.onchanged,
    this.controller,
    this.validator,
    super.key,
    this.borderside,
    this.suffixicon,
    this.maxline
    ,this.fillcolor,
    this.filled,
    this.hintstyle,
    this.hinttext,
    this.labelstyle,
    this.labeltext,
    this.prefixicon});


  Color ?borderside;
  Color?fillcolor;
  bool? filled;
  String ?hinttext;
  TextStyle ?hintstyle;
  String ?labeltext;
  TextStyle ?labelstyle;
  Widget? prefixicon;
  Widget?suffixicon;
  int ?maxline;
  Validation? onchanged;
  TextEditingController? controller;
  Validator? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onchanged,
      controller: controller,
      maxLines: maxline??1,
      decoration: InputDecoration(
        fillColor:fillcolor ,
        filled: filled,
        enabledBorder: builtdecorationborder(bordercolor:  borderside??Colors.transparent),
        focusedBorder:  builtdecorationborder(bordercolor:  borderside??Colors.transparent),
        errorBorder:  builtdecorationborder(bordercolor: ColorManager.primaryRed),
        hintText: hinttext,
        hintStyle: hintstyle,
        labelText: labeltext,
        labelStyle: labelstyle,
        prefixIcon: prefixicon,
        suffixIcon: suffixicon,
      ),
    );

  }
  OutlineInputBorder builtdecorationborder({required Color bordercolor})
  {
    return  OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),borderSide: BorderSide(
        width: 2,color: borderside??Colors.transparent
    )
    );
  }
}