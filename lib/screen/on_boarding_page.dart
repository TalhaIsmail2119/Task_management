import 'dart:math';

// import 'package:day26/widget/common_widget.dart';
// import 'package:day26/widget/custome_button.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:work_1/widget/common_widget.dart';
import 'package:work_1/widget/custome_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -160,
              child: Transform.rotate(
            angle: pi / 5,
            child: Container(
              height: 400,
              width: 480,
              decoration: BoxDecoration(
                  color: Color(0xff8E8E93),
                  borderRadius: BorderRadius.circular(40)),
            ),
          )),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Update Progress Your Work for The Team",style: myStyle(36,textClrLight,FontWeight.w700),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  // child: SvgPicture.asset("assets/sliderr.svg"),
                ),
                CustomeButton(
                  onTap: (){},
                  title: "Sign Up",
                ),
                SizedBox(height: 16,),

                CustomeButton(
                  isOutline: true,
                  onTap: (){},
                  title: "Log In",
                ),



                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 40),
                    height:6 ,width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: textClrLight
                    ),
                  ),
                )




              ],
            ),
          )
        ],
      ),
    );
  }
}
