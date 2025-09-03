// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String nome;
  final int id;

  const User({required this.nome, required this.id});

  @override
  String toString() {
    return "Nome: $nome, id: $id";
  }
}

sealed class UserState {}

class LoadingUser implements UserState {}

class ErrorWhileLoadingUser implements UserState {
  final Exception error;

  const ErrorWhileLoadingUser({required this.error});
}

class UserLoaded implements UserState {
  final User user;

  const UserLoaded({required this.user});
}

void main() {
  UserState userState = UserLoaded(user: User(nome: "Paulo", id: 1));

  switch (userState) {
    case LoadingUser():
      print("Carregando usuário...");
      break;
    case ErrorWhileLoadingUser():
      print(userState.error);
      break;
    case UserLoaded():
      print("Usuário carregado");
      print(userState.user.toString());
      break;
  }
}
