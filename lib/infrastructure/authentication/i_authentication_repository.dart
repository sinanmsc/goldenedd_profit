import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:goldenegg_profit/domain/exception/firebase_auth_exception.dart';
import 'package:goldenegg_profit/domain/models/profile/profile_model.dart';

abstract class IAuthenticationRepo {
  Future<UserCredential> signup(String email, String password);
  Future<UserCredential> login(String email, String password);
  Future<void> logout();
  Future<void> addUser(ProfileModel user);
}

class AuthenticationRepoImpl implements IAuthenticationRepo {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
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

  final collection =
      FirebaseFirestore.instance.collection('users').withConverter(
            fromFirestore: ProfileModel.fromFirestore,
            toFirestore: (ProfileModel value, options) => value.toFirestore(),
          );

  @override
  Future<void> addUser(ProfileModel user) async {
    await collection.add(user);
  }
}
