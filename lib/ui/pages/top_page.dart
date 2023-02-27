import 'package:flutter/material.dart';
import 'package:material_3_for_flutter_sample/ui/pages/account_page.dart';
import 'package:material_3_for_flutter_sample/ui/pages/home_page.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TopPageState();
  }
}

class _TopPageState extends State<TopPage> {
  static const _pageItems = [
    _TopPageItem(page: HomePage(), title: "Home", icon: Icons.home),
    _TopPageItem(
        page: AccountPage(), title: "Account", icon: Icons.account_circle)
  ];

  int _currentIndex = 0;

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material Design Sample"),
      ),
      body: PageView(
        controller: _pageController,
        children: _pageItems.map((item) => item.page).toList(),
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _pageItems
            .map((item) => BottomNavigationBarItem(
                  icon: Icon(item.icon),
                  label: item.title,
                ))
            .toList(),
        currentIndex: _currentIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}

class _TopPageItem {
  const _TopPageItem({
    required this.page,
    required this.title,
    required this.icon,
  });

  final StatelessWidget page;
  final String title;
  final IconData icon;
}
