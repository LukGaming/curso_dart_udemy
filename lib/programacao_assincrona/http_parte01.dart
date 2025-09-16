import 'package:curso_dart_udemy/programacao_assincrona/models/post.dart';
import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();

  final response = await dio.get("http://jsonplaceholder.typicode.com/posts");

  print(response.statusCode);

  if (response.statusCode == 200) {
    final List<Post> posts = [];
    (response.data as List).forEach((post) => posts.add(Post.fromJson(post)));
    print(posts);
  }
}
