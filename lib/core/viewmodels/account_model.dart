//complete
import 'package:mobile_account_app/core/enums/viewstate.dart';
import 'package:mobile_account_app/core/models/account.dart';
import 'package:mobile_account_app/core/services/api.dart';
import 'package:mobile_account_app/core/viewmodels/base_model.dart';

import '../../service_locator.dart';


class AccountModel extends BaseModel {

  Api _api = locator<Api>();

  List<Account> accounts;
  
  Future getAccounts(String userId) async {
    setState(ViewState.Busy);

    accounts = await _api.getAccountsForUser(userId);

    setState(ViewState.Idle);
  }

}