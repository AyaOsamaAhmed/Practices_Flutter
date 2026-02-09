import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpHelper {

  static Future<List<String>> fetchPosts() async{
    final url = Uri.parse('https://dummyjson.com/users');
    List<String> firstNames = [];

    var response = await http.get(url);

    Map body = jsonDecode(response.body); // if response start with list --> use List<Map>
    List<dynamic> users = body['users'];
    debugPrint(response.statusCode.toString());
    debugPrint(response.body);
    for(var i in users){
      firstNames.add(i['firstName']);
    }
    return firstNames ;
  }
}