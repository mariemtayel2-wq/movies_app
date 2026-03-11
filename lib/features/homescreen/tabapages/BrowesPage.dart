import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/resources/color_manager.dart';
import 'package:movies_app/core/widget/Movies_sources.dart';
@RoutePage()
class BrowesPage extends StatefulWidget {
  const BrowesPage({super.key});

  @override
  State<BrowesPage> createState() => _BrowesScreenPageState();
}

class _BrowesScreenPageState extends State<BrowesPage> {
  int selectedIndex = 0;
  List<String> tabs = ["Action", "Adventure", "Animation", "Biography"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: tabs.length,
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
                child: TabBar(
                  indicatorColor: ColorManager.primarytarnsport,
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  tabs: List.generate(
                    tabs.length,
                        (index) => CustomTabContainer(
                      source: tabs[index],
                      isSelected: selectedIndex == index,
                    ),
                  ),
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => Container(),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}