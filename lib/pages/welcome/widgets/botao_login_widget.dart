import 'package:eco_market_flutter/themes/color_scheme.dart';
import 'package:flutter/material.dart';

class BotaoLogin extends StatelessWidget {
  const BotaoLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/login');
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          colorSchemeLight.secondary.withAlpha(190),
        ),
        side: MaterialStateProperty.all(
          const BorderSide(
            width: 1.5,
            color: Colors.white,
            style: BorderStyle.solid,
          ),
        ),
        foregroundColor: MaterialStateProperty.all(colorSchemeLight.onPrimary),
        overlayColor: MaterialStateProperty.all(colorSchemeLight.secondary),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        width: 288,
        height: 50,
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
