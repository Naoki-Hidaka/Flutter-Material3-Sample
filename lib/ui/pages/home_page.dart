import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _showDialog(context);
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Card(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Text("やること$index"),
            ),
          ),
        );
      },
    );
  }

  void _showDialog(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    if (!context.mounted) return;
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text("ダイアログ"),
          content: const Text("メッセージ"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            )
          ],
        );
      },
    );
  }
}
