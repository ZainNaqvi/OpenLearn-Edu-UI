import 'package:app_example_openlearn_app/src/home_page/home_page.dart';
import 'package:app_example_openlearn_app/src/splash_page/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splash = "/splash";
  static String initial = "/";

  static String getSplash() => "${splash}";
  static String getInitialPage() => "${initial}";

  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => SplashScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: "/",
      page: () => HomePage(),
      transition: Transition.leftToRightWithFade,
    ),
  ];
}
