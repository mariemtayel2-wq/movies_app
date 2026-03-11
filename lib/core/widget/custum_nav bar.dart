import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/color_manager.dart';
import 'package:movies_app/core/resources/data%20nav.dart';
import 'dart:ui';
import 'single item nev.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  static const _items = [
    NavItem(icon: Icons.home_rounded),
    NavItem(icon: Icons.search_outlined),
    NavItem(icon: Icons.explore_rounded),
    NavItem(icon: Icons.person_pin),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: ColorManager.primarydarkGrey,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: ColorManager.primarywhite.withOpacity(0.15),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            _items.length,
            (index) => NavBarItem(
              item: _items[index],
              isSelected: selectedIndex == index,
              onTap: () => onItemSelected(index),
            ),
          ),
        ),
      ),
    );
  }
}
