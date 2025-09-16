import 'package:curso_dart_udemy/programacao_assincrona/models/post.dart';
import 'package:dio/dio.dart';

class PostsApi {
  final dio = Dio();

  void _setup() {
    throw Exception("Erro no setup");
    dio.options.baseUrl = "http://jsonplaceholder.typicode.com";
  }

  Future<List<Post>> get() async {
    try {
      _setup();
      final result = await dio.get("/posts");

      if (result.statusCode == 200) {
        return (result.data as List)
            .map((post) => Post.fromJson(post))
            .toList();
      }

      throw Exception("Ocorreu um erro ao buscar posts");
    } on Exception catch (error) {
      print("Excessão: $error");
      rethrow;
    }
  }

  Future<Post> getById(int postId) async {
    try {
      _setup();
      final result = await dio.get("/posts/$postId");

      if (result.statusCode == 200) {
        final postMap = (result.data as Map<String, dynamic>);
        return Post.fromJson(postMap);
      }

      throw Exception("Ocorreu um erro ao buscar o post $postId");
    } on Exception catch (error) {
      print("Excessão: $error");
      rethrow;
    }
  }
}
