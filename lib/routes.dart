import 'package:app_example_openlearn_app/src/courseDetail/course_detail.dart';
import 'package:app_example_openlearn_app/src/favoritecourse/favourite_course.dart';
import 'package:app_example_openlearn_app/src/home_page/home_page.dart';
import 'package:app_example_openlearn_app/src/splash_page/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splash = "/splash";
  static String initial = "/";
  static String favorite = "/favourite-course";
  static String course_detail = "/course-detail";

  static String getSplash() => "${splash}";
  static String getInitialPage() => "${initial}";
  static String getFavoriteCourse() => "${favorite}";
  static String getCourseDetail({
    required String title,
    required String type,
    required String price,
    required String tag,
  }) =>
      "${course_detail}?title=$title&&type=$type&&price=$price&&tag=$tag";

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
    GetPage(
      name: course_detail,
      page: () {
        String? title = Get.parameters['title'];
        String? type = Get.parameters['type'];
        String? price = Get.parameters['price'];
        String? tag = Get.parameters['tag'];

        return CourseDetail(
          title: title!,
          type: type!,
          tag: tag!,
          price: price!,
        );
      },
      transition: Transition.leftToRightWithFade,
    ),
  ];
}
