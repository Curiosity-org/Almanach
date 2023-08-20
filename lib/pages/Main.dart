import 'package:flutter/material.dart';

import 'package:almanach/pages/Home/Home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: <Widget>[
        const HomePage(),
        Container(color: Colors.blue),
        Container(color: Colors.purple),
        Container(color: Colors.amber)
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            icon: Image.asset('assets/home.png', width: 30, height: 30),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Image.asset('assets/bus-stop.png', width: 30, height: 30),
            label: 'Arrêts',
          ),
          NavigationDestination(
            icon: Image.asset('assets/heart.png', width: 30, height: 30),
            label: 'Favoris',
          ),
          NavigationDestination(
            icon: Image.asset('assets/gender.png', width: 30, height: 30),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
