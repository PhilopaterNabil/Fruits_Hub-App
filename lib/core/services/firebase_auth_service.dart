import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      log('email: $email, password: $password');
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code: ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور ضعيفة ، يجب ان تحتوي على 6 حروف على الاقل');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'لقد تم انشاء حساب بالفعل بهذا البريد الالكتروني');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد اتصال بالانترنت ، يرجى المحاولة مرة اخرى');
      } else if (e.code == 'channel-error') {
        throw CustomException(
            message:
                'حدث خطأ داخلي أثناء محاولة إنشاء الحساب. يرجى إعادة تشغيل التطبيق أو تحديثه.');
      } else {
        throw CustomException(message: 'لقد حدث خطأ ما، يرجى المحاولة مرة اخرى');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}');
      throw CustomException(message: 'لقد حدث خطأ ما ، يرجى المحاولة مرة اخرى');
    }
  }

  Future<User> signInWithEmailAndPassword({required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()} and code: ${e.code}');
      if (e.code == 'user-not-found') {
        throw CustomException(message: 'لا يوجد حساب بهذا البريد الالكتروني');
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'كلمة المرور غير صحيحة');
      } else if (e.code == 'invalid-credential') {
        throw CustomException(message: 'لا يوجد حساب بهذا البريد الالكتروني');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد اتصال بالانترنت ، يرجى المحاولة مرة اخرى');
      } else {
        throw CustomException(message: 'لقد حدث خطأ ما، يرجى المحاولة مرة اخرى');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}');
      throw CustomException(message: 'لقد حدث خطأ ما ، يرجى المحاولة مرة اخرى');
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);
    final LoginResult loginResult = await FacebookAuth.instance.login(
      loginTracking: LoginTracking.limited,
      nonce: nonce,
    );

    OAuthCredential facebookAuthCredential;

    if (Platform.isIOS) {
      switch (loginResult.accessToken!.type) {
        case AccessTokenType.classic:
          final token = loginResult.accessToken as ClassicToken;
          facebookAuthCredential = FacebookAuthProvider.credential(
            token.authenticationToken!,
          );
          break;
        case AccessTokenType.limited:
          final token = loginResult.accessToken as LimitedToken;
          facebookAuthCredential = OAuthCredential(
            providerId: 'facebook.com',
            signInMethod: 'oauth',
            idToken: token.tokenString,
            rawNonce: rawNonce,
          );
          break;
      }
    } else {
      facebookAuthCredential = FacebookAuthProvider.credential(
        loginResult.accessToken!.tokenString,
      );
    }

    return (await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential)).user!;
  }

  String generateNonce([int length = 32]) {
    final charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = math.Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)]).join();
  }

  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<User> signInWithApple() async {
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);

    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );

    return (await FirebaseAuth.instance.signInWithCredential(oauthCredential)).user!;
  }

  Future<void> signOut() async => await FirebaseAuth.instance.signOut();

  Future<void> deleteAccount() async => await FirebaseAuth.instance.currentUser!.delete();
}
