import 'package:practice_english/utilities/app_helper/navigator_global_context_helper.dart';

import 'injector.dart';

class DependencyManager {
  static Future<void> inject() async {
    // Inject get current context
    injector.registerLazySingleton<NavigatorGlobalContextHelper>(() {
      return NavigatorGlobalContextHelper();
    });
  }
}
