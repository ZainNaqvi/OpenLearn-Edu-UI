import 'package:app_example_openlearn_app/src/favoritecourse/course_detail.dart';
import 'package:app_example_openlearn_app/src/home_page/home_page.dart';
import 'package:app_example_openlearn_app/src/splash_page/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splash = "/splash";
  static String initial = "/";
  static String favorite = "/favourite-course";

  static String getSplash() => "${splash}";
  static String getInitialPage() => "${initial}";
  static String getFavoriteCourse() => "${favorite}";

  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => SplashScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: initial,
      page: () => HomePage(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: favorite,
      page: () => FavoriteCoursePage(),
      transition: Transition.leftToRightWithFade,
    ),
  ];
}
