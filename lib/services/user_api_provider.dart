import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/user.dart';

class UserProvider{
  // https://jsonplaceholder.typicode.com/users
  Future<List<User>> getUsers()async{
    final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    final response = await http.get(url);

    if(response.statusCode == 200){
      final List<dynamic> usersJson = jsonDecode(response.body);
      return usersJson.map((e) => User.fromJson(e)).toList();

    }else{
      throw Exception('Error by fetching data');
    }
  }
}