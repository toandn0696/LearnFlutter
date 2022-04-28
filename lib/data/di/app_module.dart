import 'package:shared_preferences/shared_preferences.dart';

class AppModules{
  static Future<void> inject() async {
    // Share Preferences
    final sharedPreferences = await SharedPreferences.getInstance();

  }
}