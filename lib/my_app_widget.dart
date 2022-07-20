import 'package:eco_market_flutter/pages/admin/AdminHomePage.dart';
import 'package:eco_market_flutter/pages/home/home_page.dart';
import 'package:eco_market_flutter/pages/home/widgets/page_controller_widget.dart';
import 'package:eco_market_flutter/pages/login/login_page.dart';
import 'package:eco_market_flutter/repositories/CategoriaRepository.dart';
import 'package:eco_market_flutter/services/auth_service.dart';
import 'package:eco_market_flutter/widgets/auth_check.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),
        ChangeNotifierProvider(create: (context) => CategoriaRepository()),
        ChangeNotifierProvider(create: (context) => PageControllerNotifier()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Eco Market',
        initialRoute: '/',
        routes: {
          '/': (context) => const AuthCheck(),
          '/login': (context) => const LoginPage(isLogin: true),
          '/cadastro': (context) => const LoginPage(isLogin: false),
          '/home': (context) => const HomePage(),
          '/admin': (context) => const AdminHomePage(),
        },
      ),
    );
  }
}
