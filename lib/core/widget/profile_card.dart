import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/resources/color_manager.dart';
import 'package:movies_app/core/resources/textstyle_manager.dart';
import '../resources/assets_manager.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorManager.primarygrayprofile,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(AssetsManager.logo),
                  ),

                  Text(
                    "John Safwat",
                    style: sourceStyle(color: ColorManager.primarywhite),
                  ),
                ],
              ),

              buildCounter("12", "Wish List"),

              buildCounter("10", "History"),
            ],
          ),

          Row(
            children: [
              Expanded(child: yellowButton("Edit Profile")),

              Expanded(child: exitButton()),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomItem(Icons.list, "Watch List"),

              bottomItem(Icons.folder, "History"),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCounter(String number, String title) {
    return Column(
      children: [
        Text(number, style: sourceStyle(color: ColorManager.primarywhite)),
        Text(title, style: sourceStyle(color: ColorManager.primarywhite)),
      ],
    );
  }

  Widget yellowButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: ColorManager.primaryYello,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(text, style: buttonStyle(color: ColorManager.primaryblack)),
      ),
    );
  }

  Widget exitButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: ColorManager.primaryRed,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        spacing: 5.w,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Exit", style: buttonStyle(color: ColorManager.primarywhite)),

          Icon(Icons.logout, color: ColorManager.primarywhite),
        ],
      ),
    );
  }

  Widget bottomItem(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, color: ColorManager.primaryYello),
        Text(text, style: buttonStyle(color: ColorManager.primarywhite)),
      ],
    );
  }
}
