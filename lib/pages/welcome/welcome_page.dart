import 'package:eco_market_flutter/pages/welcome/widgets/background_widget.dart';
import 'package:eco_market_flutter/pages/welcome/widgets/botao_cadastro_widget.dart';
import 'package:eco_market_flutter/pages/welcome/widgets/botao_login_widget.dart';
import 'package:eco_market_flutter/pages/welcome/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const BackgroundWidget(),
          const LogoWidget(),
          Positioned(
            bottom: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const BotaoLogin(),
                    const Padding(padding: EdgeInsets.all(8)),
                    const BotaoCadastro(),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/admin');
                        },
                        child: const Text('ADMIN')),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
