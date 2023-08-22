import 'package:http/http.dart' as http;
import 'package:flutter_application_1/const.dart';

class RemoteProductService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/product_product';
  
  Future<dynamic> get() async {
    var response = await client.get(
      Uri.parse(
        remoteUrl
      )
    );

    return response;
  }
  
  Future<dynamic> getByName({required String keyword}) async {
    var response = await client.get(
      Uri.parse('$remoteUrl?populate=images,tags&filters[name][\$contains]=$keyword')
    );

    return response;
  }

  Future<dynamic> getByCategory({required int id}) async {
    var response = await client.get(
      // get_products_by_categorie
        Uri.parse('$baseUrl/get_products_by_categorie?categorie_id=$id')
    );

    return response;
  }
}