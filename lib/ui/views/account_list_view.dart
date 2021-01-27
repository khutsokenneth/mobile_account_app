import 'package:flutter/material.dart';

import 'package:mobile_account_app/core/enums/user_data.dart';
import 'package:mobile_account_app/core/enums/viewstate.dart';
import 'package:mobile_account_app/core/models/account.dart';
import 'package:mobile_account_app/core/viewmodels/account_model.dart';
import 'package:mobile_account_app/ui/shared/text_styles.dart';
import 'package:mobile_account_app/ui/views/base_view.dart';
import 'package:mobile_account_app/ui/widgets/account_list_item.dart';

class AccountListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<AccountModel>(
      onModelReady: (model) => model.getAccounts(USERID),
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Mobile Banking')),
            backgroundColor: Color.fromARGB(255, 158, 74, 0),
          ),
          backgroundColor: Color.fromARGB(255, 150, 241, 159),
          body: model.state == ViewState.Busy
              ? Center(child: CircularProgressIndicator())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(child: Text(
                          'Your List Of Accounts',
                          style: headerStyle,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Click on an account for a detailed view'),
                      ),
                      Expanded(child: getAccountsUi(model.accounts))
                    ])),
    );
  }

//need to refactor to call the api here
  Widget getAccountsUi(List<Account> accounts) => ListView.builder(
      itemCount: accounts.length,
      itemBuilder: (context, index) => AccountListItem(
            account: accounts[index],
            onTap: () {
              Navigator.pushNamed(context, 'account',
                  arguments: accounts[index]);
            },
          ));
}
