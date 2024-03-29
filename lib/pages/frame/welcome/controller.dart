import 'package:chatty/common/routes/names.dart';
import 'package:chatty/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();

  final title = 'ChatRocketSuper';
  final state = WelcomeState();

  // get called routing -> called bindings -> called controller to save in memory -> all state initialized -> onReady get called
  @override
  void onReady() {
    // use for navigation
    super.onReady();
    Future.delayed(
        const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Message));
  }
}
