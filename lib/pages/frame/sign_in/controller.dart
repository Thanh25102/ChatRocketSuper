import 'package:chatty/common/entities/entities.dart';
import 'package:chatty/common/enum/oauth_type.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends GetxController {
  SignInController();

  final title = 'ChatRocketSuper';
  final _googleSignIn = GoogleSignIn(scopes: ['openid']);

  Future<void> handleSignIn(OauthType type) async {
    //google, facebook, apple, phone
    try {
      if (kDebugMode) print("Oauth with $type");
      switch (type) {
        case OauthType.google:
          final user = await _googleSignIn.signIn();
          if (user != null) {
            final displayName = user.displayName ?? '';
            final email = user.email;
            final id = user.id;
            final photoUrl = user.photoUrl ?? 'assets/icons/google.png';
            final loginRq = LoginRequestEntity(
                avatar: photoUrl, email: email, open_id: id, name: displayName);
            if (kDebugMode) print("user: ${loginRq.name}");
          }
          break;
        case OauthType.facebook:
          break;
        case OauthType.apple:
          break;
        case OauthType.phoneNumber:
          break;
        default:
          break;
      }
    } catch (e) {
      if (kDebugMode) print("Error oauth $e");
    }
  }
}
