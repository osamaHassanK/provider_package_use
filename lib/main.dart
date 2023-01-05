import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package_use/providers/countprovider.dart';
import 'package:provider_package_use/providers/secondprovider.dart';
import 'package:provider_package_use/screens/secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> CountProvider(),),
        ChangeNotifierProvider(create: (context)=> SecondProvider(),),
      ],
     child: MaterialApp(
       debugShowCheckedModeBanner: false,
     home: SecondScreen(),
      // home:NewScreen(),
     ),
    );
  }
}
