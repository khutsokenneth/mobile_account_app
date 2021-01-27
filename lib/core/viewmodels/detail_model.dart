//complete
import 'package:mobile_account_app/core/enums/viewstate.dart';
import 'package:mobile_account_app/core/models/account.dart';
import 'package:mobile_account_app/core/services/api.dart';
import 'package:mobile_account_app/core/viewmodels/base_model.dart';

import '../../service_locator.dart';


class DetailModel extends BaseModel {

  Api _api = locator<Api>();

  Account account;
  
  Future getAccount(String accountId) async {
    setState(ViewState.Busy);

    account = await _api.getAccount(accountId);

    setState(ViewState.Idle);
  }

}