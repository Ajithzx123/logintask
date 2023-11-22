
import 'dart:convert';

import 'package:http/http.dart'as http;


 createLogin(
    String username, String password, ) async {
      
  print(username);
  print(password);

  var headers = {'Content-Type': 'application/json'};

  var request = http.Request(
      'POST', Uri.parse('https://reqres.in/api/login'));

  request.body = json.encode({"email": username, "password": password});
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 201) {
    // print( response.);

   

    print("Success");
  } else {
    print(response.reasonPhrase);
    print('1');
  }
 
  
}