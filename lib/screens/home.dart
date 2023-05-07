import 'package:flutter/material.dart';
import 'package:maplibre_gl/mapbox_gl.dart';

import 'package:almanach/components/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
              children: [
                MaplibreMap(
                  initialCameraPosition: const CameraPosition(target: LatLng(0, 0)),
                  styleString: 'https://stratus.family/.well-known/matrix-tileserver/style.json',
                ),
                SafeArea(
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Center(child: Text('Barre de recherche')),
                    ),
                  ),
                ),
                SafeArea(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: const BottomNav(),
                  ),
                )
              ]
      ),
    );
  }
}