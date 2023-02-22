import 'package:flutter/material.dart';
import 'package:material_3_for_flutter_sample/pages/top_page.dart';

class Material2App extends StatelessWidget {
  const Material2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TopPage(),
    );
  }
}