import 'package:eco_market_flutter/themes/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 380,
          child: Chip(
              backgroundColor: Colors.white,
              label: Container(
                alignment: Alignment.center,
                width: 250,
                height: 50,
                child: Text('Save the Planet!',
                    style: GoogleFonts.dancingScript(
                      textStyle: TextStyle(
                        fontSize: 32,
                        color: colorSchemeLight.tertiary,
                      ),
                    )),
              )),
        ),
        Positioned(
          top: 90,
          child: Column(
            children: [
              Image.asset('assets/images/logo.png'),
              Text(
                'EcoMarket',
                style: GoogleFonts.righteous(
                  textStyle: TextStyle(
                    fontSize: 60,
                    color: colorSchemeLight.tertiary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
