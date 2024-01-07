
import 'package:flutter/material.dart';
import 'package:work_1/widget/common_widget.dart';



class CustomeButton extends StatelessWidget {
  CustomeButton({
    super.key,required this.title,required this.onTap,this.isOutline
  });

  String title;
  VoidCallback onTap;
  bool ?isOutline;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color:isOutline==null? buttonClr :backgroundClr,
      height: 56,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: BorderSide(
              color: isOutline==null?buttonClr:textClrLight
          )
      ),
      child: Text(
        "$title",
        style: myStyle(16, textClrLight),
      ),
    );
  }
}
