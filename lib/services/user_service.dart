import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vgenesia/models/user_model.dart';

class UserService {
  final CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'password': user.password,
      });
    } catch (e) {
      rethrow;
    }
  }
}
