import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
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
    );
  }
}
