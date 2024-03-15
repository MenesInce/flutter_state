import 'package:calisma_yapisi/user_interaction/snacbar_alert.dart';
import 'package:calisma_yapisi/view/home_page.dart';
import 'package:flutter/material.dart';

import 'bottom_navigatiion_bar/bottom_nav_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          titleTextStyle: const TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.w700,
              fontSize: 20),
          color: Colors.yellow[300],
          centerTitle: true,

        ),
        snackBarTheme: const SnackBarThemeData(backgroundColor: Colors.red),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const UserInteraction(),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBack;

  const CustomAppBar({Key? key, required this.title, required this.onBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: onBack,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


