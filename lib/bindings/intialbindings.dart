import 'package:get/get.dart';
import '../core/class/create_read_update_delete.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
