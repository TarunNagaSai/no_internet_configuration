import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:no_internet_configuration/UI/screens/home_screen.dart';
import 'package:no_internet_configuration/UI/screens/second_screen.dart';
import 'package:no_internet_configuration/UI/widgets/no_internet_helper.dart';

class GetRoutes {
  static const home = '/', secondScreen = '/secondScreen';

  static List<GetPage> routes = [
    checkWithNetworkThenShoot(
      name: home,
      page: () => const HomeScreen(),
      checkWithNetwork: false,
    ),
    checkWithNetworkThenShoot(
      name: secondScreen,
      page: () => const SecondScreen(),
    ),
  ];

  /// this method helps check internet and redirect to the respective screen
  static GetPage checkWithNetworkThenShoot({
    required String name,
    required Widget Function() page,
    Bindings? binding,
    bool checkWithNetwork = true,
  }) {
    if (!checkWithNetwork) {
      return GetPage(
        name: name,
        page: () => page(),
        binding: binding,
      );
    }
    return GetPage(
      name: name,
      page: () => CheckInternet(
        routeName: name,
        page: page,
      ),
      binding: binding,
    );
  }
}
