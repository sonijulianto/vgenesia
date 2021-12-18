import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String password;

  const UserModel({
    required this.id,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [id, email, password];
}
