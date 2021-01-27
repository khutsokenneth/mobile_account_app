import 'package:flutter/material.dart';

import 'package:mobile_account_app/core/models/account.dart';
import 'package:mobile_account_app/ui/shared/text_styles.dart';

class AccountListItem extends StatelessWidget {
  final Account account;
  final Function onTap;

  const AccountListItem({this.account, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3.0,
                  offset: Offset(0.0, 2.0),
                  color: Color.fromARGB(80, 0, 0, 0))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Account Name: ' + account.name),
            account.balance != null
                ? Text('Account Balance: R' + account.balance.toString(), style: accountBalanceStyle)
                : Text('Account Balance R0', style: accountBalanceStyle,),
          ],
        ),
      ),
    );
  }
}
