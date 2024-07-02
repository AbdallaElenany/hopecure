import 'package:get/get.dart';
import 'package:hopecure/view/screen/auth/login.dart';
import 'package:hopecure/view/screen/auth/sign_up.dart';
import 'package:hopecure/view/screen/master_home/master_home_page.dart';
import 'core/constant/routes.dart';
import 'core/middleware/auth_middleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const Login(),
    //middlewares: [AuthMiddleware()],
  ),
  GetPage(
    name: AppRoute.signUp,
    page: () => const SignUp(),
  ),
  GetPage(
    name: AppRoute.masterHome,
    page: () => const MasterHomePage(),
  ),
];
