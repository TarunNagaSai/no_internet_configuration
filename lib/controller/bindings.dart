import 'package:get/get.dart';
import 'package:no_internet_configuration/controller/internet_service_controller.dart';

/// Initial bindings to the app
class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<NetworkServicesController>(
      NetworkServicesController(),

      /// passing it true will keep the controller instance in the app memory
      /// untill the app is complelty closed
      permanent: true,
    );
  }
}
