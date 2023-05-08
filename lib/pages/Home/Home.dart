import 'package:flutter/material.dart';
import 'package:maplibre_gl/mapbox_gl.dart';

import 'package:almanach/ui/components/navigation.dart';
import 'package:almanach/ui/components/bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = 'HomePage';

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
              ]
      ),
      bottomNavigationBar: const BottomNav(),
      // TODO : Masque totalement le Stack, à débuguer
      //bottomSheet: const HomeSheet(),
    );
  }
}