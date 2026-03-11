import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/widget/profile_card.dart';
@RoutePage()
class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileCard(),


      ],
    );
  }
}
