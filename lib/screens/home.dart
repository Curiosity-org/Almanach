import 'package:flutter/material.dart';
import 'package:maplibre_gl/mapbox_gl.dart';

import 'package:almanach/components/bottom_nav.dart';
import 'package:almanach/components/home_screen/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
              children: [
                // TODO : Centrer la carte sur la position de l'utilisateur
                // si la localisation est activée (cela inplique de demander
                // l'autorisation de localisation à l'utilisateur et de gérer
                // les cas où elle est refusée ou désactivée)
                MaplibreMap(
                  initialCameraPosition: const CameraPosition(target: LatLng(49.4383, 1.0976), zoom: 10.0),
                  styleString: 'https://stratus.family/.well-known/matrix-tileserver/style.json',
                  myLocationEnabled: true,
                  myLocationRenderMode: MyLocationRenderMode.NORMAL,
                  myLocationTrackingMode: MyLocationTrackingMode.None,
                ),

                // TODO: Tentative ratée pour une carte
                // à remplacer par une bottom sheet permanente
                // https://api.flutter.dev/flutter/material/BottomSheet-class.html
                //Container(
                //  alignment: Alignment.topCenter,
                //  child: const MainView(),
                //),

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
                      // TODO : Design de la barre de recherche
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