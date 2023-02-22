import 'package:flutter/material.dart';
import 'package:material_3_for_flutter_sample/material2_app.dart';
import 'package:material_3_for_flutter_sample/material3_app.dart';

void main() {
  const String materialVersion = String.fromEnvironment("MATERIAL");
  final StatelessWidget app;
  if (materialVersion == "2") {
    app = const Material2App();
  } else {
    app = const Material3App();
  }
  runApp(app);
}