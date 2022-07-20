import 'package:eco_market_flutter/themes/color_scheme.dart';
import 'package:flutter/material.dart';

class BotaoCadastro extends StatelessWidget {
  const BotaoCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/cadastro');
      },
      style: ButtonStyle(
        side: MaterialStateProperty.all(const BorderSide(
            width: 1.5, color: Colors.white, style: BorderStyle.solid)),
        foregroundColor: MaterialStateProperty.all(colorSchemeLight.onPrimary),
        overlayColor: MaterialStateProperty.all(colorSchemeLight.secondary),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        width: 288,
        height: 50,
        child: const Text(
          'Cadastre-se',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
