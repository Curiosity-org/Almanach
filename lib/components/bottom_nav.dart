import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: const BoxDecoration(
        color: Color(
          0xffffffff,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            40,
          ),
          topRight: Radius.circular(
            40,
          ),
          bottomLeft: Radius.circular(
            0,
          ),
          bottomRight: Radius.circular(
            0,
          ),
        ),
        boxShadow: [],
      ),
      child:
        Row(
          children: [
            Expanded(
              child: Column(
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Image(
                      image: AssetImage(
                        'assets/home.png',
                      ),
                    ),
                  ),
                  Text(
                    'Accueil',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      color: Color(
                        0xff000000,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Image(
                      image: AssetImage(
                        'assets/bus-stop.png',
                      ),
                    ),
                  ),
                  Text(
                    'Explorer',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      color: Color(
                        0xff000000,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Image(
                      image: AssetImage(
                        'assets/heart.png',
                      ),
                    ),
                  ),
                  Text(
                    'Favoris',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      color: Color(
                        0xff000000,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Image(
                      image: AssetImage(
                        'assets/gender.png',
                      ),
                    ),
                  ),
                  Text(
                    'Profil',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      color: Color(
                        0xff000000,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
