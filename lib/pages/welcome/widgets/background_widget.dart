import 'package:eco_market_flutter/themes/color_scheme.dart';
import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(
              'assets/images/fundoLogin.jpg',
              scale: 0.5,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colorSchemeLight.primary.withOpacity(0.8),
                Colors.white.withOpacity(0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          top: -120,
          child: Container(
            height: 600,
            width: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(400),
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ),
        Positioned(
          top: -120,
          child: Container(
            height: 630,
            width: 630,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(400),
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ),
        Positioned(
          top: 410,
          left: 145,
          child: Opacity(
            opacity: 0.1,
            child: Image.asset(
              'assets/images/leef.png',
              scale: 1.1,
            ),
          ),
        ),
      ],
    );
  }
}
