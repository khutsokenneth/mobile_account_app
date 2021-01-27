import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_account_app/core/models/account.dart';
import 'package:mobile_account_app/ui/shared/text_styles.dart';
import 'package:mobile_account_app/ui/shared/ui_helpers.dart';


class AccountView extends StatelessWidget {
  final Account account;
  AccountView({this.account});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(account.name),
      backgroundColor: Color.fromARGB(250, 158, 74, 0),),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UIHelper.verticalSpaceLarge(),
            Text('Account Name:'),
            Text(account.name, style: accountDetailStyle,),
            UIHelper.verticalSpaceMedium(),
            Text('Account Number:'),
            Text(account.accountNumber, style: accountDetailStyle,),
            UIHelper.verticalSpaceMedium(),
            Text('Account Balance:'),
            account.balance != null? Text('R' +account.balance.toString(), style: accountDetailStyle,) : Text('R0', style: accountDetailStyle,),
            UIHelper.verticalSpaceMedium(),
            Text('Date Created:'),
            Text(account.created.split('T')[0], style: accountDetailStyle,),
            UIHelper.verticalSpaceMedium(),
            Text('Last Modified (Date):'),
            Text(account.modified.split('T')[0], style: accountDetailStyle),
            UIHelper.verticalSpaceMedium(),
            Text('Status:'),
            account.active ? Text('Active', style: accountDetailStyle) : Text('Inactive', style: accountDetailStyle),
            UIHelper.verticalSpaceMedium(),
            Text('Overdraft:'),
            account.overdraft > 0 ? Text(account.overdraft.toString(), style: accountOverdraftStyle,): Text(account.overdraft.toString(), style: accountDetailStyle,),
            UIHelper.verticalSpaceLarge(),
        
            Text('Your user ID: ' +account.userId, style: accountBalanceStyle)
            
          ],
        ),
      ),
    );
  }
}
