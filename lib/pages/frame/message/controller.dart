import 'package:chatty/common/routes/names.dart';
import 'package:chatty/pages/frame/message/index.dart';
import 'package:get/get.dart';

class MessageController extends GetxController {
  MessageController();

  final state = MessageState();

  // get called routing -> called bindings -> called controller to save in memory -> all state initialized -> onReady get called
  @override
  void onReady() {
    // use for navigation
    super.onReady();

  }
}
