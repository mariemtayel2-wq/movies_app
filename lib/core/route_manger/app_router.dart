import 'package:auto_route/auto_route.dart';
import 'package:movies_app/features/onBordingscreen/onBording.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter  extends  RootStackRouter  {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnBordingRoute.page, initial: true),
  ];
}