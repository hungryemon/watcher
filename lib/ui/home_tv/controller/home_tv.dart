import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watcher/theme/index.dart';
import 'package:watcher/ui/home_tv/index.dart';

class HomeTvScreenController extends SuperController<dynamic> {
  HomeTvScreenController();

  final RxInt currentIndex = 0.obs;

  final List<Widget> tabs = const <Widget>[
    AiringTodayTvSeriesTab(),
    OnTheAirTvSeriesTab(),
    PopularTvSeriesTab(),
    TopRatedTvSeriesTab(),
  ];

  void changeBrightness() {
    Get.changeThemeMode(Get.isDarkMode == true ? ThemeMode.light : ThemeMode.dark);
    WidgetsBinding.instance!.performReassemble();
    
  }

  void changeLocale() {
    Get.updateLocale(Get.locale! == const Locale("tr", "TR") ? const Locale("en", "US") : const Locale("tr", "TR"));
  }

  void openEndDrawer(GlobalKey<ScaffoldState> _scaffoldKey) {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  Color getMyColor(int bottomBarIndex, int itemIndex) {
    Color color;
    if (bottomBarIndex != itemIndex) {
      if (Get.theme == Style.lightTheme) {
        color = Colors.white;
      } else {
        color = Colors.black26;
      }
    } else if (Get.theme == Style.lightTheme) {
      if (kIsWeb) {
        color = Colors.white;
      } else {
        color = Colors.transparent;
      }
    } else {
      color = Colors.white;
    }
    return color;
  }

  @override
  void onInit() {
    super.onInit();
    debugPrint('$runtimeType onInit called');
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint('$runtimeType onReady called');
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint('$runtimeType onClose called');
  }

  @override
  void onDetached() {
    debugPrint('$runtimeType onDetached called');
  }

  @override
  void onInactive() {
    debugPrint('$runtimeType onInactive called');
  }

  @override
  void onPaused() {
    debugPrint('$runtimeType onPaused called');
  }

  @override
  void onResumed() {
    debugPrint('$runtimeType onResumed called');
  }
}
