import 'package:http/http.dart' as http;
import 'package:flutter_application_1/const.dart';


class RemoteBannerService{
  var client = http.Client();
  var remoteUrl = '$baseUrl/get_banners';
  
  // static get baseUrl => null; 

  Future<dynamic> get() async{
    var response = await client.get(
      Uri.parse(remoteUrl)
    );
    return response;
  }
}