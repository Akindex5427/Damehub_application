import 'package:damehub/ui/pages/auth/login.dart';
import 'package:damehub/ui/pages/dame_home.dart';
import 'package:damehub/ui/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:damehub/model/user_repository.dart';
import 'package:provider/provider.dart';
import '../pages/splash.dart';
import '../pages/auth/login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (_) => UserRepository.instance(),
      child: Consumer(
        builder: (context, UserRepository user, _) {
          switch (user.status) {
            case Status.Uninitialized:
              return Splash();
            case Status.Unauthenticated:
            case Status.Authenticating:
              return LoginPage();
            case Status.Authenticated:
              return DameHomePage(); 
          }
        },
      ), 
    );
  }
}
