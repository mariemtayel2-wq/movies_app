import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/onBordingscreen/SharedPrefHelper.dart';

import 'core/route_manger/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isDone = await SharedPrefHelper.isOnboardingDone();
  runApp(MyApp(isDone: isDone));
}

class MyApp extends StatelessWidget {
  final bool isDone;
  late final AppRouter appRouter;

  MyApp({Key? key, required this.isDone}) : super(key: key) {
    appRouter = AppRouter(isDone: isDone);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: appRouter.config(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}