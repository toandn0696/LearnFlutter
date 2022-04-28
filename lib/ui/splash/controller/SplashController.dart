import 'package:get/get.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    splashAction();
  }

  void splashAction() async {
    // String token = await SharedPreferencesStorage.read(KEY_TOKEN);
    // bool isLogin = token != null;
    // print(token.toString());
    Future.delayed(Duration(seconds: 3), () {
      // Get.offAll(isLogin ? MainPage() : LoginPage());
    });
  }
}