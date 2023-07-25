import 'package:http/http.dart' as http;

class RemoteBannerService{
  var client = http.Client();
  var remoteUrl = '$baseUrl/web/image';
  
  static get baseUrl => null; 

  Future<dynamic> get() async{
    var response = await client.get(
      Uri.parse('$remoteUrl?model=ecommerce.banner')
    );
    return response;
  }
}