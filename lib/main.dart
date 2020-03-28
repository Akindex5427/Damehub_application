import 'package:damehub/ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:damehub/model/user_repository.dart';
import 'package:provider/provider.dart';


void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (_) => UserRepository.instance(),
      child: MaterialApp(
        title: 'Dame Luxury',
        theme: ThemeData(
          primarySwatch: Colors.red,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.red,
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular
              (30.0),
            ),
            padding: const EdgeInsets.symmetric
            (vertical: 14.0, horizontal: 30.0)
          ),
          inputDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.all
            (16.0,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular
              (4.0),
            ),
            labelStyle: TextStyle(
              fontSize: 18.0,
              color: Colors.blueGrey,
            ),
          )
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}  




  





