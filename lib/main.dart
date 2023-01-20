import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:no_internet_configuration/controller/bindings.dart';
import 'package:no_internet_configuration/core/constanst.dart';
import 'package:no_internet_configuration/core/routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: AppContnats.siteName,
      enableLog: true,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,

      /// we are passing [GetRoutes.routes] to getPages.
      getPages: GetRoutes.routes,
      initialBinding: InitialBindings(),
    ),
  );
}
