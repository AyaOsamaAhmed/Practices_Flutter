import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpHelper {

  //Get
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

 // Post
  Future<void> loginUser() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    try {
      final response = await http.post(
        url,
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "email": "test@test.com",
          "password": "123456",
        }),
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        print("Success ✅");
        print(response.body);
      } else {
        print("Failed ❌");
        print(response.statusCode);
      }
    }catch(e){
      print("Error $e");
    }
  }

  /*put -- update
  PUT	تعديل بيانات موجودة بالكامل
  PATCH	تعديل جزئي

   */
  Future<void> updatePost() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

    try {
      final response = await http.put(
        url,
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "id": 1,
          "title": "Updated Title",
          "body": "Updated Body",
          "userId": 1,
        }),
      );

      if (response.statusCode == 200) {
        print("Updated Successfully ✅");
        print(response.body);
      } else {
        print("Update Failed ❌");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  //delete
  Future<void> deletePost(int index) async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/$index');

    try {
      final response = await http.delete(url);

      if (response.statusCode == 200) {
        print("Deleted Successfully ✅");
      } else {
        print("Delete Failed ❌");
      }
    } catch (e) {
      print("Error: $e");
    }
  }



}