import 'dart:convert';
import 'dart:io';

main() async{

  Uri apiUrl = Uri.parse("https://swapi.co/api/people/1");

  HttpClientRequest request = await new HttpClient().getUrl(apiUrl);
  HttpClientResponse response = await request.close();

  Stream resStream = response.transform(new Utf8Decoder());

  await for(var data in resStream){
    print(data);
  }
}