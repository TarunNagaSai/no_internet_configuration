import 'package:get/get.dart';
import 'package:no_internet_configuration/controller/internet_service.dart';

/// Initial bindings to the app
class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<NetworkServicesController>(
      NetworkServicesController(),
      permanent: true,
    );
  }
}
