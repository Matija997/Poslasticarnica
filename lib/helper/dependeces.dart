import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:poslasticarnica/controllers/popular_product_controller.dart';
import 'package:poslasticarnica/data/api/api_client.dart';
import 'package:poslasticarnica/data/repos/popular_product_repo.dart';
import 'package:poslasticarnica/utils/app_constants.dart';


Future<void> init() async {

  final sharedPreference = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreference);
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));


  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));


  //controllers



  Get.lazyPut(() => PopularProduct(popularProductRepo: Get.find()));

}