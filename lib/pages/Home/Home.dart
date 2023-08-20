import 'package:flutter/material.dart';
import 'package:maplibre_gl/mapbox_gl.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}