import 'package:flutter/material.dart';
import 'package:material_3_for_flutter_sample/ui/theme/colors.dart';

void main() {
  runApp(const CatalogApp());
}

class CatalogApp extends StatelessWidget {
  const CatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: colorScheme
      ),
      home: const ColorCatalogPage()
    );
  }
}

class ColorCatalogPage extends StatelessWidget {
  const ColorCatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        scrollDirection: Axis.vertical,
        children: [
          ColorCatalogItem(
            color: colorScheme.primary,
            colorName: "Primary",
          ),
          ColorCatalogItem(
            color: colorScheme.onPrimary,
            colorName: "onPrimary",
          ),
          ColorCatalogItem(
            color: colorScheme.secondary,
            colorName: "secondary",
          ),
          ColorCatalogItem(
            color: colorScheme.onSecondary,
            colorName: "onSecondary",
          ),
          ColorCatalogItem(
            color: colorScheme.background,
            colorName: "background",
          ),
          ColorCatalogItem(
            color: colorScheme.onBackground,
            colorName: "onBackground",
          ),
          ColorCatalogItem(
            color: colorScheme.surface,
            colorName: "surface",
          ),
          ColorCatalogItem(
            color: colorScheme.onSurface,
            colorName: "onSurface",
          ),
          ColorCatalogItem(
            color: colorScheme.error,
            colorName: "error",
          ),
          ColorCatalogItem(
            color: colorScheme.onError,
            colorName: "onError",
          )
        ],
      ),
    );
  }
}

class ColorCatalogItem extends StatelessWidget {
  const ColorCatalogItem({
    super.key,
    required this.color,
    required this.colorName,
  });

  final Color color;
  final String colorName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: color),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16),
            child: Text(colorName),
          ),
        )
      ],
    );
  }
}
