import 'package:get/get.dart';
import 'package:hopecure/view/screen/auth/login.dart';
import 'package:hopecure/view/screen/auth/sign_up.dart';
import 'package:hopecure/view/screen/master_home/master_home_page.dart';
import 'core/constant/routes.dart';
import 'core/middleware/onbording_middleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const MasterHomePage(),
    middlewares: [OnbordingMiddleware()],
  ),
  GetPage(
    name: AppRoute.signUp,
    page: () => const SignUp(),
  ), /*
  GetPage(
    name: AppRoute.changePassword,
    page: () => const ChangePassword(),
  ),
  GetPage(
    name: AppRoute.newPassword,
    page: () => const NewPassword(),
  ),
  GetPage(
    name: AppRoute.masterHome,
    page: () => const MasterHomePage(),
  ),*/
];
