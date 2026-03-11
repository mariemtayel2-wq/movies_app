import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/resources/color_manager.dart';

class MoviescontainerBroweser extends StatelessWidget {
  const MoviescontainerBroweser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 189.w,
      height: 279.h,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Positioned(
            top: 102,
            left: 235,
            child: Container(
              width: 58.w,
              height: 28.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorManager.primarygray,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// تقيم الفيلم
                  Icon(Icons.star, color: ColorManager.primaryYello, size: 20),
                ],
              ),
            ),
          ),

          /// Image.network() الي هتيجي من api
        ],
      ),
    );
  }
}
