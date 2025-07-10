import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/services/database_service.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/core/utils/backend_endpoint.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImpl({required this.firebaseAuthService, required this.databaseService});
  @override
  Future<Either<Failures, UserEntity>> cretateUserWithEmailAndPassword(
      {required String name, required String email, required String password}) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      var userEntity = UserEntity(
        name: name,
        email: email,
        uId: user.uid,
      );
      await addUserData(userEntity: userEntity);

      return right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);

      return left(ServerFailure(e.message));
    } catch (e) {
      await deleteUser(user);

      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return left(ServerFailure('لقد حدث خطأ ما ، يرجى المحاولة مرة اخرى'));
    }
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) await firebaseAuthService.deleteAccount();
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      var user =
          await firebaseAuthService.signInWithEmailAndPassword(email: email, password: password);

      var userEntity = await getUserData(uId: user.uid);
      return right(userEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithEmailAndPassword: ${e.toString()}');
      return left(ServerFailure('لقد حدث خطأ ما ، يرجى المحاولة مرة اخرى'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      var isUserExists = await databaseService.checkIfDataExists(
          path: BackendEndpoint.isUserExists, documentId: user.uid);
      if (isUserExists) {
        await getUserData(uId: user.uid);
      }else {
        await addUserData(userEntity: userEntity);
      }
      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log('Exception in AuthRepoImpl.signInWithGoogle: ${e.toString()}');
      return left(ServerFailure('لقد حدث خطأ ما ، يرجى المحاولة مرة اخرى'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(userEntity: userEntity);
      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log('Exception in AuthRepoImpl.signInWithFacebook: ${e.toString()}');
      return left(ServerFailure('لقد حدث خطأ ما ، يرجى المحاولة مرة اخرى'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithApple() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithApple();
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(userEntity: userEntity);
      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log('Exception in AuthRepoImpl.signInWithApple: ${e.toString()}');
      return left(ServerFailure('لقد حدث خطأ ما ، يرجى المحاولة مرة اخرى'));
    }
  }

  @override
  Future addUserData({required UserEntity userEntity}) async {
    try {
      await databaseService.addData(
          path: BackendEndpoint.addUserData, data: userEntity.toMap(), documentId: userEntity.uId);
    } catch (e) {
      log('Exception in AuthRepoImpl.addUserData: ${e.toString()}');
    }
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var userData =
        await databaseService.getData(path: BackendEndpoint.getUserData, documentId: uId);
    return UserModel.fromSnapshot(userData);
  }
}
