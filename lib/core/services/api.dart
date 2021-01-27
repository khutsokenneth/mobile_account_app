//complete
import 'dart:convert';

import 'package:mobile_account_app/core/enums/user_data.dart';
import 'package:mobile_account_app/core/models/account.dart';
import 'package:http/http.dart' as http;

/// The service responsible for networking requests
class Api {
  static const endpoint = 'http://us-central1-momentumtest-bfdef.cloudfunctions.net/app/api/v1/account';

  var client = new http.Client();

  Future<List<Account>> getAccountsForUser(String userId) async {
    var accounts = List<Account>();
    print("getting accounts...");
    //get user accounts for id
    try{

    
    var res = await client.get('$endpoint/findByUserId?userId=$userId');

    //parsed into list
    var parsed = json.decode(res.body) as List<dynamic>;

    //loop and convert each item to account
    for (var account in parsed) {
      accounts.add(Account.fromJson(account));
    }

    print("account gotten successfully");
    //convert and return 
    return accounts;
    } catch(err) {
      print(err);
    }
    return accounts;
  }

  Future<Account> getAccount(String accountId) async {
    //get account for id
    var res =  await client.get('$endpoint/$accountId');

    //convert and return 
    return Account.fromJson(json.decode(res.body));

  }

  

  
}