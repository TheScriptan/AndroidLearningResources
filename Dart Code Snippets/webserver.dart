import 'dart:io';

void main() async{

  var server = await HttpServer.bind("localhost", 8080);

  await for(var request in server){
    if(request.uri.pathSegments.length > 0){
      String route = request.uri.pathSegments.last;
      if(route == "hello"){
        request.response.write("Hello world from Dart API");
        request.response.close();
      } else if(route == "test"){
        request.response.write("testing");
        request.response.close();
      } else {
        request.response.write("Error");
        request.response.close();
      }
    }
  }
}