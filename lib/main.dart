import 'package:flutter/material.dart';
import 'core/db/data_base_helper.dart';
import 'package:pr1/screens/administrator.dart';
import 'package:pr1/screens/signIn.dart';
import 'package:pr1/screens/user.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DataBaseHelper.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
