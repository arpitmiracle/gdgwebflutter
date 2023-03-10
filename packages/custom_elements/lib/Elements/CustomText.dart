import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_elements/custom_elements.dart';

class CustomText extends StatelessWidget {
  CustomText({required this.text, this.color,this.fontWeight,this.maxLines,this.fontSize,this.textAlign,this.textDecoration});

  String text;
  Color? color;
  FontWeight? fontWeight;
  double? fontSize;
  int? maxLines;
  TextOverflow? overflow;
  TextAlign? textAlign;
  TextDecoration? textDecoration;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: CustomStyles.textStyle(
          fontSize: fontSize,
          fontColor: color,
          textDecoration: textDecoration,
          fontWeight: fontWeight
      ),
    );
  }
}
