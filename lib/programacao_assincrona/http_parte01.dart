import 'package:curso_dart_udemy/programacao_assincrona/models/post.dart';
import 'package:curso_dart_udemy/programacao_assincrona/services/posts_api.dart';
import 'package:dio/dio.dart';

void main() async {
  final postsApi = PostsApi();

  final posts = await postsApi.get();

  final post = await postsApi.getById(97);

  print("post: $post");
}
