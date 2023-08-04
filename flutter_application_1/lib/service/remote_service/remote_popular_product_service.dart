import 'package:http/http.dart' as http;
import 'package:flutter_application_1/const.dart';

class RemotePopularProductService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/product_product_populate';//i need to bring the baseUrl from the API

  Future<dynamic> get() async {
    var response = await client.get(
      Uri.parse(remoteUrl)//i need to bring that part from the API
    );
    return response;
  }
}