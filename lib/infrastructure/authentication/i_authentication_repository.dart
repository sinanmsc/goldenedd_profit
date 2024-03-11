import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:goldenegg_profit/domain/exception/firebase_auth_exception.dart';

abstract class IAuthenticationRepo {
  Future<UserCredential> signup(String email, String password);
  Future<UserCredential> login(String email, String password);
  Future<void> logout();
}

class AuthenticationRepoImpl implements IAuthenticationRepo {
  final auth = FirebaseAuth.instance;
  @override
  Future<UserCredential> signup(String email, String password) async {
    try {
      return await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      log('signup i : ${e.message}');
      throw GetFirebaeAuthException(e.message.toString());
    }
  }

  @override
  Future<UserCredential> login(String email, String password) async {
    try {
      return await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      log('signin i : ${e.message}');
      throw GetFirebaeAuthException(e.message.toString());
    }
  }

  @override
  Future<void> logout() async {
    try {
      return await auth.signOut();
    } on FirebaseAuthException catch (e) {
      throw GetFirebaeAuthException(e.message.toString());
    }
  }
}
