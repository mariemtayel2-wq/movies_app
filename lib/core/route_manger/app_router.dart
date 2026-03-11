import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/features/forget/forgetscreen.dart';
import 'package:movies_app/features/homescreen/mainsreen.dart';
import 'package:movies_app/features/login/presentation.dart';
import 'package:movies_app/features/onBordingscreen/presentation.dart';
import 'package:movies_app/features/register/presentation.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final bool isDone;
  AppRouter({required this.isDone});

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnBordingRoute.page, initial: !isDone),
    AutoRoute(page: LoginRoute.page, initial: isDone),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: ForgetPasswordRoute.page),
    AutoRoute(page: MainRoute.page),
    

  ];
}