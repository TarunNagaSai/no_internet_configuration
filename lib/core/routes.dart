import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:no_internet_configuration/UI/screens/home_screen.dart';
import 'package:no_internet_configuration/UI/screens/second_screen.dart';
import 'package:no_internet_configuration/UI/widgets/no_internet_helper.dart';

class GetRoutes {
  /// route names
  static const home = '/', secondScreen = '/secondScreen';

  /// list of scrrens
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

  /// will all the properties of the [GetPage] into this method where
  /// it adds the accessbulity to the no intenet screen.
  static GetPage checkWithNetworkThenShoot({
    required String name,
    required Widget Function() page,
    Bindings? binding,

    /// passing this as false into make the page directly navigate to the page
    /// without checking with internet
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
