import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'Drawer/Drawer.dart';
import 'Testing_screen.dart';
import 'firebase_options.dart';
import 'package:intl/date_symbol_data_local.dart';




void main() async {
  await initializeDateFormatting('en_US');
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  var delegate = await LocalizationDelegate.create(
      basePath: 'assets/i18n/',
      fallbackLocale: 'en_US',
      supportedLocales: ['ta','te','ml','kn','en_US','bn','hi','es','pt','fr','nl','de','it','sv','mr','gu','ory','IN','or','ori']);
  runApp(LocalizedApp(delegate, MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Drawercus(),
    );
  }

}
