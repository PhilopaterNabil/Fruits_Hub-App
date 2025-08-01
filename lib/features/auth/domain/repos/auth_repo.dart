import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failures, UserEntity>> cretateUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failures, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Failures, UserEntity>> signInWithGoogle();

  Future<Either<Failures, UserEntity>> signInWithFacebook();

  Future<Either<Failures, UserEntity>> signInWithApple();

  Future addUserData({required UserEntity userEntity});
  Future saveUserData({required UserEntity userEntity});

  Future<UserEntity> getUserData({required String uId});
}
