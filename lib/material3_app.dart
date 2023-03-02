import 'package:flutter/material.dart';
import 'package:material_3_for_flutter_sample/ui/pages/top_page.dart';
import 'package:material_3_for_flutter_sample/ui/theme/colors.dart';

class Material3App extends StatelessWidget {
  const Material3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
      ),
      home: const TopPage(),
    );
  }
}