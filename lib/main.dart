import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_todo/ui/todo_list.dart';
import 'package:sentry/sentry.dart';

Future<void> main() async {
  await Sentry.init(
      (options) => options.dsn = '',
      appRunner: () {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(MyApp());
  });
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weight Tracker',
      themeMode: ThemeMode.dark,
      theme: new ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white10,
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent,),
      ),
      home: new TodoList(),
    );
  }
}
