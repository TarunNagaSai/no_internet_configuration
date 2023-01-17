import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:no_internet_configuration/core/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(
              GetRoutes.secondScreen,
            );
          },
          child: const Text(
            "Go to second screen",
          ),
        ),
      ),
    );
  }
}
