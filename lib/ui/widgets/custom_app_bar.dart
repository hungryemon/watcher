import 'package:flutter/material.dart';
import 'package:watcher/theme/index.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    Key? key,
    this.height = 70,
  }) : super(key: key, preferredSize: const Size(414, 70), child: const SizedBox());

  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      title: SizedBox(
        height: height,
        width: 50,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: SvgPicture.asset("assets/icons/app_icon.svg"),
        ),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          onPressed: () {
            Get.changeTheme(Get.theme == Style.darkTheme ? Style.lightTheme : Style.darkTheme);
            WidgetsBinding.instance!.performReassemble();
          },
          icon: Icon(Get.theme == Style.darkTheme ? Icons.wb_incandescent : Icons.wb_incandescent_outlined),
        ),
        IconButton(
          onPressed: () {
            Get.updateLocale(Get.locale! == const Locale("tr", "TR") ? const Locale("en", "US") : const Locale("tr", "TR"));
          },
          icon: Text(Get.locale != null ? Get.locale!.languageCode.toUpperCase() : "TR"),
        ),
      ],
    );
  }
}
