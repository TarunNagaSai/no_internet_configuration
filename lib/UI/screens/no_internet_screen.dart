import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:no_internet_configuration/controller/internet_service_controller.dart';

class NoInternetScreen extends StatelessWidget {
  /// this class has the code to display no internet screen.
  const NoInternetScreen({
    Key? key,
    required this.routeName,
  }) : super(key: key);

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/undraw_Page_not_found_re_e9o6.png",
              ),
              const SizedBox(
                height: 111,
              ),
              Text(
                "Screen not found",
                style: Theme.of(context).textTheme.bodyLarge!,
              ),
              const SizedBox(
                height: 13,
              ),
              Text(
                "Seems like you have a problem with your internet connection!",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              const SizedBox(
                height: 32,
              ),
              GetBuilder<NetworkServicesController>(
                builder: (connectionData) {
                  return ElevatedButton(
                    onPressed: connectionData.connectedToNetwork
                        ? () {
                            Get.back();
                            Get.toNamed(routeName);
                          }
                        : null,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Text(
                        "Retry",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
