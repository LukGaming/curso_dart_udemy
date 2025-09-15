import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();

  final response = await dio.get("http://jsonplaceholder.typicode.com/posts");

  print(response.statusCode);

  if (response.statusCode == 200) {
    (response.data as List).forEach((post) {
      print("---------------");
      print("Post: $post");
    });
  }
}
