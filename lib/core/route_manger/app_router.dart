import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/features/forget/forgetscreen.dart';
import 'package:movies_app/features/login/presentation.dart';
import 'package:movies_app/features/onBordingscreen/onBording.dart';
import 'package:movies_app/features/register/presentation.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: RegisterRoute.page, ),
    AutoRoute(page: ForgetPasswordRoute.page, ),
    AutoRoute(page: OnBordingRoute.page),
  ];
}