import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'bindings/intialbindings.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/services/services.dart';
import 'routes.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      child: GetMaterialApp(
        translations: MyTranslation(),
        debugShowCheckedModeBanner: false,
        title: 'HopeCure',
        locale: controller.language,
        theme: controller.appTheme,
        initialBinding: InitialBindings(),
        getPages: routes,
      ),
    );
  }
}
