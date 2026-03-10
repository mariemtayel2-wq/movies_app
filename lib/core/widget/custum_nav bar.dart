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
    NavItem(icon: Icons.home_rounded, label: 'الرئيسية'),
    NavItem(icon: Icons.explore_rounded, label: 'استكشاف'),
    NavItem(icon: Icons.favorite_rounded, label: 'المفضلة'),
    NavItem(icon: Icons.person_rounded, label: 'حسابي'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 28),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            height: 72,
            decoration: BoxDecoration(
              color: ColorManager.primarywhite.withOpacity(0.08),
              borderRadius: BorderRadius.circular(28),
              border: Border.all(
                color:  ColorManager.primarywhite.withOpacity(0.15),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.35),
                  blurRadius: 30,
                  offset: const Offset(0, 10),
                ),
                BoxShadow(
                  color:  ColorManager.primaryYello.withOpacity(0.08),
                  blurRadius: 20,
                  offset: const Offset(0, 4),
                ),
              ],
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
        ),
      ),
    );
  }
}

