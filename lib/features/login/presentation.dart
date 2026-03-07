

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/route_manger/app_router.dart';

import '../../core/resources/assets_manager.dart';
import '../../core/resources/color_manager.dart';
import '../../core/resources/textstyle_manager.dart';
import '../../core/widget/elevetedbutton.dart';
import '../../core/widget/text_field.dart';
@RoutePage()
class LoginScreen  extends StatefulWidget
{

  LoginScreen ({super.key});

  @override
  State<LoginScreen > createState() => _LogInState();
}

class _LogInState extends State<LoginScreen > {
  TextEditingController emailcontroller=TextEditingController();

  TextEditingController passwordcontroller=TextEditingController();

  late final formkey=GlobalKey<FormState>();

bool ontab=true;

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
return SafeArea(
  child: Scaffold(
    backgroundColor:ColorManager.primaryblack ,
    body: Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: height*.02,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AssetsManager.logo,width: 121.w,height:118.h ,),
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
            CustumTextFieled(
              hinttext: "Password",
              hintstyle: textFieldStyle(color:ColorManager.primarywhite ),
              maxline: 1,
              prefixicon: Icon(Icons.password_outlined, size: 25,),
              fillcolor: ColorManager.primarydarkGrey,
              filled: true,
              suffixicon: IconButton(onPressed: (){
                ontab?ontab=false:ontab= true;
                setState(() {
                });
              },icon:ontab?Icon(Icons.visibility)
                  :
              Icon(Icons.visibility_off)),

              controller:passwordcontroller ,
              validator:   (value) {
                if (value == null || value.isEmpty) {
                  return "Password is required";
                }

                return null;
              },

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: ()
                  {
                    ///forget password
                  },
                  child: Text("Forget Password ?",
                    style:
                    linkStyle(color: ColorManager.primaryYello )),),
              ],
            ),
            Custumelevatedbutton(

                onPressed:(){
                  ///Home screen
                },
                backgroundcolor: ColorManager.primaryYello,

                child:Text("Login",style: subheadingStyle(color: ColorManager.primaryblack),)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t Have Account ? ",style: linkStyle(color: ColorManager.primaryYello ) ,),


                TextButton(
                    onPressed: (){
                      if (formkey.currentState!.validate()){
                        context.pushRoute(RegisterRoute());}
                }, child:Text("Create one",
                    style: linkStyle(color: ColorManager.primarywhite),) )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:
                    Divider(
                      color:ColorManager.primaryYello ,
                      thickness: 1,
                      indent: height*.02,
                      endIndent: height*.02 ,
                    )),
                Text("or", style:linkStyle(color: ColorManager.primaryYello )   ,)
                ,Expanded(
                    child:
                    Divider(
                      color:ColorManager.primaryYello ,
                      thickness: 1,
                      indent: height*.02,
                      endIndent: height*.02 ,
                    ))
              ],
            ),
            Custumelevatedbutton(

                backgroundcolor: ColorManager.primaryYello,

                onPressed: (){
             ///login with google
                },
                child:Row(
                  spacing: width*.03,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata_outlined, size: 30,),
                    Text("Login With Google",style:  subheadingStyle(color: ColorManager.primaryblack), )
                  ],
                ))


          ]
        ),
      ),
    )
  ),
);

  }
}