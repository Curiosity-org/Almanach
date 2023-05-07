import 'package:flutter/material.dart';

// Remove the overscroll effect
class NoOverscroll extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child:
        IgnorePointer(
          child: ScrollConfiguration(
            behavior: NoOverscroll(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    )
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
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
                    )
                  ),
                ],
              )
            ),
          ),
        )
    );
  }
}