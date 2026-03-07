
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/resources/assets_manager.dart';
import 'package:movies_app/core/resources/color_manager.dart';
import 'package:movies_app/core/resources/textstyle_manager.dart';
import 'package:movies_app/core/widget/elevetedbutton.dart';
import 'package:movies_app/core/widget/text_field.dart';
@RoutePage()
class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});
  TextEditingController emailcontroller=TextEditingController();
  @override

  Widget build(BuildContext context) {
  return
      SafeArea(child:
      Scaffold(
        backgroundColor: ColorManager.primaryblack,
        body: Column(
          spacing: 20.h,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Forget Password",style:linkStyle(color: ColorManager.primaryYello ) ,),
            Image.asset(AssetsManager.forgotpass, width: 430.w, height: 430.h,),
            CustumTextFieled(
              hinttext: "Email",
              hintstyle: textFieldStyle(color:ColorManager.primarywhite ),
              maxline: 1,
              prefixicon: Icon(Icons.email, size: 25,),
              fillcolor: ColorManager.primarydarkGrey,
              filled: true,
              controller:emailcontroller ,
              validator:   (value) {
                if (value == null || value.isEmpty) {
                  return "Email is required";
                }
                if (!value.contains("@")) {
                  return "Enter a valid email";
                }
                return null;

              },

            ),
            Custumelevatedbutton(

                onPressed:(){
                  ///verifay account
                },
                backgroundcolor: ColorManager.primaryYello,

                child:Text("Verify Email",
                  style: subheadingStyle(color: ColorManager.primaryblack)
                  ,)),

          ],
        ),
      ));
  }

}