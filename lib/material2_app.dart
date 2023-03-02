import 'package:flutter/material.dart';
import 'package:material_3_for_flutter_sample/ui/pages/top_page.dart';
import 'package:material_3_for_flutter_sample/ui/theme/colors.dart';

class Material2App extends StatelessWidget {
  const Material2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: colorScheme,
      ),
      home: const TopPage(),
    );
  }
}