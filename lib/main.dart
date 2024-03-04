import 'package:flutter/material.dart';
import 'package:goldenegg_profit/app_file.dart';
import 'package:goldenegg_profit/domain/injectable/injectable.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUp();
  runApp(const MyApp());
}
