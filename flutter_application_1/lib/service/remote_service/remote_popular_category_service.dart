import 'package:http/http.dart' as http;
import 'package:flutter_application_1/const.dart';

class RemotePopularCategoryService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/get_categorie_populate';

  Future<dynamic> get() async {
    var response = await client.get(
      Uri.parse(
        remoteUrl
      )
    );
    return response;
  }
}