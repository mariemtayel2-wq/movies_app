import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static const String _onboardingKey = 'is_onboarding_done';

  static Future<void> setOnboardingDone() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_onboardingKey, true);
  }

  static Future<bool> isOnboardingDone() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_onboardingKey) ?? false;
  }
}