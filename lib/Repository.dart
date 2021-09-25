import 'dart:convert';

import 'package:punishing_gray_raven/UserData.dart';
import 'package:http/http.dart' as http;

class Repository{
  final _baseUrl = 'https://61475eb465467e0017384b1f.mockapi.io/ResourceAPI';

  Future getData() async{
    try{
      final response = await http.get(Uri.parse(_baseUrl));
      if(response.statusCode == 200){
        Iterable iterable = jsonDecode(response.body);
        List<User> user = iterable.map((e) => User.fromJson(e)).toList();
        return user;
      }
    } catch(e) {
      print(e.toString());
    }
  }
}