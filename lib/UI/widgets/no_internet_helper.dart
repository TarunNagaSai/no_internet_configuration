import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:no_internet_configuration/UI/screens/no_internet_screen.dart';
import 'package:no_internet_configuration/controller/internet_service.dart';

class CheckInternet extends StatelessWidget {
  /// CheckInternet accept the [page] widget and check with internet
  /// if available returns page or no internet screen
  const CheckInternet({required this.page, required this.routeName, super.key});

  final Widget Function() page;
  final String routeName;
  static NetworkServicesController get networkController => Get.find();

  @override
  Widget build(BuildContext context) {
    if (networkController.connectedToNetwork) {
      return page();
    } else {
      return NoInternetScreen(
        routeName: routeName,
      );
    }
  }
}
