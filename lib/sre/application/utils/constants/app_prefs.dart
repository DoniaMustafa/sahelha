

class AppPrefs {
  // static final SharedPreferences _preferences = di.getIt<SharedPreferences>();
  static const String prefsUsersKey = 'CACHED_USERS';
  static const String prefsLocationKey = 'CACHED_LOCATION';
  static const String prefsLanguageKey = 'LANGUAGE';
  static const String prefsUsersAddressKey = 'CACHED_USERS_ADDRESS';
  static const String prefsFavouriteKey = 'CACHED_FAVOURITE';
  static const String prefsLoggedInKey = "IS_LOGGED_IN";
  static const String prefsGetStatedKey = "GET_STARTED";
  static const String governoratesKey = "cities";
  static const String _newUserKey = "new user";
  static const String prefsUserKey = "User id";
  static const String userFavouritesKey = "User favourites";

//   Future<bool> get isUserLoggedIn async => _preferences.getBool(prefsLoggedInKey) ?? false;
//   Future<void> get setUserLoggedIn async => _preferences.setBool(prefsLoggedInKey, true);
//
//   Future<void> setEnglishLanguage(bool isEnglish) async => await _preferences.setBool(prefsLanguageKey, isEnglish);
//   static Future<void> get logout async => _preferences.remove(AppPrefs.prefsUsersKey);
//   Future<bool> get getStartedPressed async => _preferences.getBool(prefsGetStatedKey) ?? false;
//   static UserModel? get user {
//     String? cachedUser = _preferences.getString(AppPrefs.prefsUsersKey);
//     UserModel? userModel;
//     if (cachedUser != null) userModel = UserModel.fromJson(cachedUser.fromStringToJson);
//     return userModel;
//   }
//
//   static LatLng? get location {
//     String? cachedLocation = _preferences.getString(AppPrefs.prefsLocationKey);
//     LatLng? latLng;
//     if (cachedLocation != null) {
//       latLng = LatLng(cachedLocation.fromStringToJson['latitude'], cachedLocation.fromStringToJson['longitude']);
//     }
//     return latLng;
//   }
//
//   static cacheLocation(LatLng latlng) async {
//     String locationString = {'latitude': latlng.latitude, 'longitude': latlng.longitude}.fromJsonToString;
//     await _preferences.setString(AppPrefs.prefsLocationKey, locationString);
//   }
//
//   /*  used in splash screen to check if user is new or not to handle which screen to go */
//   static bool get getIsNewUser => _preferences.getBool(_newUserKey) ?? true;
//   static Future<bool> get setNewUser async => await _preferences.setBool(_newUserKey, false);
//   /***************************************** app localization *******************************/
// /*  static void setApiLocalCode(String langCode) {
//     if (langCode == AppLocalization.arabicCode) {
//       apiLocaleCode = apiArabicLocaleCode;
//     } else if (langCode == englishCode) {
//       apiLocaleCode = apiEnglishLocaleCode;
//     }
//   }*/
//   static String get getAppLanguage {
//     String? appLanguage = _preferences.getString(prefsLanguageKey);
//     if (appLanguage != null && appLanguage.isNotEmpty) {
//       return appLanguage;
//     } else {
//       return LanguageType.english.getValue;
//     }
//   }
//
//   static Future<bool> setAppLanguage(String lang) => _preferences.setString(prefsLanguageKey, lang);
//
//   static Future<bool> changeLanguage() async {
//     String currentAppLanguage = getAppLanguage;
//     if (currentAppLanguage == LanguageType.english.getValue) {
//       currentAppLanguage = LanguageType.arabic.getValue;
//     } else {
//       currentAppLanguage = LanguageType.english.getValue;
//     }
//     return await setAppLanguage(currentAppLanguage);
//   }
//
//   static Locale get getLocale {
//     String currentLanguage = getAppLanguage;
//     return currentLanguage == LanguageType.english.getValue ? LanguageType.english.getLocale : LanguageType.arabic.getLocale;
//   }
//
//   static String get getApiLanguage => (getAppLanguage == LanguageType.english.getValue)
//       ? LanguageType.english.getApiLanguage
//       : LanguageType.arabic.getApiLanguage;
//
//   static bool get isAppEnglish {
//     return getAppLanguage == LanguageType.english.getValue;
//   }
}
