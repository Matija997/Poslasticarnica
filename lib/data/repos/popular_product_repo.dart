import 'package:poslasticarnica/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:poslasticarnica/utils/app_constants.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}