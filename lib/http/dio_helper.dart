import 'package:dio/dio.dart';
import 'package:untitled/http/post_model.dart';


class DioHelper {

  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://jsonplaceholder.typicode.com",
      headers: {
        "Content-Type": "application/json",
      },
    ),
  );


  //Post
  Future<void> createPost() async {
    try {
      Response response = await dio.post(
        "/posts",
        data: {
          "title": "Flutter Dio",
          "body": "Using Dio for POST",
          "userId": 1,
        },
      );

      print("Created ✅");
      print(response.data);
    } catch (e) {
      print("Error: $e");
    }
  }

  //Get
  Future<void> getPosts() async {
    try {
      Response response = await dio.get("/posts");

      print("Success ✅");
      print(response.data); // List of posts
    } on DioException catch (e) {
      print("Error: ${e.message}");
    }
  }


  //update --
  Future<void> updatePost() async {
    try {
      Response response = await dio.put(
        "/posts/1",
        data: {
          "id": 1,
          "title": "Updated Title",
          "body": "Updated Body",
          "userId": 1,
        },
      );

      print("Updated ✅");
      print(response.data);
    } catch (e) {
      print("Error: $e");
    }
  }


  //delete
  Future<void> deletePost() async {
    try {
      Response response = await dio.delete("/posts/1");

      print("Deleted ✅");
      print("Status Code: ${response.statusCode}");
    } catch (e) {
      print("Error: $e");
    }
  }

  //Get with model
  Future<List<PostModel>> fetchPosts() async {
    Response response = await dio.get("/posts");

    List data = response.data;

    return data.map((e) => PostModel.fromJson(e)).toList();
  }


}