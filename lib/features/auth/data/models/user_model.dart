import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.name, required super.email, required super.uId});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      uId: user.uid,
      name: user.displayName ?? '',
      email: user.email ?? '',
    );
  }

  factory UserModel.fromSnapshot(Map<String, dynamic> snapshot) {
    return UserModel(
      uId: snapshot['uId'],
      name: snapshot['name'],
      email: snapshot['email'],
    );
  }
}
