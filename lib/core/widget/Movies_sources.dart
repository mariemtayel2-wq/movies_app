import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/resources/color_manager.dart';
import 'package:movies_app/core/resources/textstyle_manager.dart';

class CustomTabContainer extends StatelessWidget {
  final String source;
  final bool isSelected;

  const CustomTabContainer({
    super.key,
    required this.source,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: isSelected
            ? ColorManager.primaryYello
            : ColorManager.primarytarnsport,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ColorManager.primaryYello, width: 2),
      ),
      child: Text(
        source,
        style: sourceStyle(
          color: isSelected
              ? ColorManager.primaryblack
              : ColorManager.primaryYello,
        ),
      ),
    );
  }
}
