import 'package:flutter/material.dart';
import 'package:watcher/models/index.dart';
import 'package:watcher/routes/index.dart';
import 'package:watcher/theme/index.dart';
import 'package:watcher/ui/start/index.dart';
import 'package:watcher/ui/widgets/index.dart';
import 'package:watcher/utils/index.dart';
import 'package:get/get.dart';

class StartScreen extends GetView<StartScreenController> {
  const StartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            StartIcon(),
            HomeButtons(),
          ],
        ),
      ),
    );
  }
}

class StartIcon extends GetView<StartScreenController> {
  const StartIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         
         
    ImageIcon(
            Image.asset(Url.appLogoPath).image,
            color: Get.theme.primaryColor,
            size: 250,
            ) 
          
    
        ],
      ),
    );
  }
}

class HomeButtons extends GetView<StartScreenController> {
  const HomeButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Center(
      child: SizedBox(
        height: 250,
        width: width,
        child: controller.obx(
          (SessionData? state) {
            if (state?.guestSessionId != null) {
              CustomProgressIndicator.closeLoadingOverlay();
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 60,
                    width: 150,
                    child: TextButton(
                      style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((Set<MaterialState> states) => Get.theme.primaryColor)),
                      onPressed: () {
                        Get.toNamed(AppRoutes.HOME_MOVIE);
                      },
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'app.movies.title'.tr,
                          style: TextStyles.primary24CW,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 150,
                    child: TextButton(
                      style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((Set<MaterialState> states) => Get.theme.primaryColor)),
                      onPressed: () {
                        Get.toNamed(AppRoutes.HOME_TV);
                      },
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'app.tv_series.title'.tr,
                          style: TextStyles.primary24CW,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(flex: 3),
                  SizedBox(
                    height: 100,
                    width: Get.context?.width ?? Get.width,
                    child: Center(
                      child: Text(
                        state?.guestSessionId ?? "",
                        style: TextStyles.primary8W300,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              CustomProgressIndicator.openLoadingDialog();
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
