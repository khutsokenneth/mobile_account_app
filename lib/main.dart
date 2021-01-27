import 'package:flutter/material.dart';
import 'service_locator.dart';


import 'package:mobile_account_app/ui/router.dart' as MyRouter;
void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Account Management',
      theme: ThemeData(),
      initialRoute: 'home',
      onGenerateRoute: MyRouter.Router.generateRoute,
      
    );
  }
}
