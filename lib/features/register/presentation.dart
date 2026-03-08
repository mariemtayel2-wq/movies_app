import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/assets_manager.dart';
import 'package:movies_app/core/resources/color_manager.dart';
import 'package:movies_app/core/resources/textstyle_manager.dart';
import 'package:movies_app/core/route_manger/app_router.dart';
import 'package:movies_app/core/widget/elevetedbutton.dart';
import 'package:movies_app/core/widget/text_field.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  static const String routeName = "register";

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterScreen> {
  bool ontab = false;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.primaryblack,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: height * .04,
            horizontal: width * .03,
          ),
          child: Form(
            key: formKey,
            child: Column(
              spacing: height * .02,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(AssetsManager.register),
                CustumTextFieled(
                  fillcolor: ColorManager.primarydarkGrey,
                  filled: true,

                  hinttext: "Name",
                  hintstyle: textFieldStyle(color: ColorManager.primarywhite),
                  prefixicon: Icon(
                    Icons.person_outline_outlined,
                    color: ColorManager.primarywhite,
                  ),
                ),
                CustumTextFieled(
                  fillcolor: ColorManager.primarydarkGrey,
                  filled: true,
                  hinttext: "Email",
                  hintstyle: textFieldStyle(color: ColorManager.primarywhite),
                  prefixicon: Icon(
                    Icons.email_outlined,
                    color: ColorManager.primarywhite,
                  ),
                ),

                CustumTextFieled(
                  fillcolor: ColorManager.primarydarkGrey,
                  filled: true,
                  hinttext: "Password",
                  hintstyle: textFieldStyle(color: ColorManager.primarywhite),
                  prefixicon: Icon(
                    Icons.lock_outlined,
                    color: ColorManager.primarywhite,
                  ),
                  suffixicon: IconButton(
                    onPressed: () {
                      ontab ? ontab = false : ontab = true;
                      setState(() {});
                    },
                    icon: ontab
                        ? Icon(
                            Icons.visibility,
                            color: ColorManager.primarywhite,
                          )
                        : Icon(
                            Icons.visibility_off,
                            color: ColorManager.primarywhite,
                          ),
                  ),
                ),

                CustumTextFieled(
                  fillcolor: ColorManager.primarydarkGrey,
                  filled: true,
                  hinttext: "Confirm Password",
                  hintstyle: textFieldStyle(color: ColorManager.primarywhite),
                  prefixicon: Icon(
                    Icons.lock_outlined,
                    color: ColorManager.primarywhite,
                  ),
                  suffixicon: IconButton(
                    onPressed: () {
                      ontab ? ontab = false : ontab = true;
                      setState(() {});
                    },
                    icon: ontab
                        ? Icon(
                            Icons.visibility,
                            color: ColorManager.primarywhite,
                          )
                        : Icon(
                            Icons.visibility_off,
                            color: ColorManager.primarywhite,
                          ),
                  ),
                ),
                CustumTextFieled(
                  fillcolor: ColorManager.primarydarkGrey,
                  filled: true,
                  hinttext: "Phone Number",
                  hintstyle: textFieldStyle(color: ColorManager.primarywhite),
                  prefixicon: Icon(
                    Icons.phone,
                    color: ColorManager.primarywhite,
                  ),
                ),

                SizedBox(height: height * .01),

                Custumelevatedbutton(
                  onPressed: () {
                    /// navigate to homescreen
                  },

                  backgroundcolor: ColorManager.primaryYello,
                  child: Text(
                    "Create Account",
                    style: subheadingStyle(color: ColorManager.primaryblack),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have Account ? ",
                      style: linkStyle(color: ColorManager.primaryYello),
                    ),
                    TextButton(
                      onPressed: () {
                        ///navigate to login
                        if (formKey.currentState!.validate()) {
                          context.pushRoute(LoginRoute());
                        }
                      },
                      child: Text(
                        " Login",
                        style: linkStyle(color: ColorManager.primarywhite),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
