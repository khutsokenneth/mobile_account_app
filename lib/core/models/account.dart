//complete
class Account {
  String id;
  String name;
  String created;
  String accountNumber;
  String userId;
  int balance;
  String modified;
  bool active;
  int overdraft;


  Account({this.id, this.name, this.created, this.accountNumber, this.userId, this.balance, this.modified, this.active, this.overdraft});

  Account.initial()
      : id = '',
        name = '',
        created = '',
        accountNumber = '',
        userId = '',
        balance = 0,
        modified = '',
        active = false,
        overdraft = 0;

  Account.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    created = json['created'];
    accountNumber = json['accountNumber'];
    userId = json['userId'];
    balance = json['balance'];
    modified = json['modified'];
    active = json['active'];
    overdraft = json['overdraft'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    
    data['id'] = this.id;
    data['name'] = this.name;
    data['created'] = this.created;
    data['accountNumber'] = this.accountNumber;
    data['userId'] = this.userId;
    data['balance'] = this.balance;
    data['modified'] = this.modified;
    data['active'] = this.active;
    data['overdraft'] = this.overdraft;

    return data;
  }
}
