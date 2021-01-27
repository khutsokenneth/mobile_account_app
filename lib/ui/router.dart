import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_account_app/core/models/account.dart';

import 'package:mobile_account_app/ui/views/detailed_account_view.dart';
import 'package:mobile_account_app/ui/views/account_list_view.dart';

const String initialRoute = "login";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => AccountListView());
      case 'home':
        print("router working");
        return MaterialPageRoute(builder: (_) => AccountListView());
      case 'account':
        var account = settings.arguments as Account;
        return MaterialPageRoute(builder: (_) => AccountView(account: account));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
