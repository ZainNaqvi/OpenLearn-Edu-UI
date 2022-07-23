import 'package:app_example_openlearn_app/src/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var selectedPage = 0;
  final List _pages = [
    HomePage(),
    Container(child: Text("Home")),
    Container(child: Text("Home")),
    Container(child: Text("Home")),
  ];
  onTap(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: Colors.purple),
          unselectedIconTheme:
              IconThemeData(color: Colors.grey.withOpacity(0.2)),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0.0,
          unselectedFontSize: 0.0,
          onTap: onTap,
          currentIndex: selectedPage,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/home.svg"),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.archive_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: "",
            ),
          ]),
    );
  }
}
