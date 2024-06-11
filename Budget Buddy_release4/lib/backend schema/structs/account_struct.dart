// ignore_for_file: unnecessary_getters_setters

import 'index.dart';
import '/flutter_flow/util.dart';

class AccountStruct extends BaseStruct {
  AccountStruct({
    String? accountName,
    double? accountBalance,
    List<TransactionStruct>? accountTransactions,
    double? accountIncome,
  })  : _accountName = accountName,
        _accountBalance = accountBalance,
        _accountTransactions = accountTransactions,
        _accountIncome = accountIncome;

  // "accountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;
  bool hasAccountName() => _accountName != null;

  // "accountBalance" field.
  double? _accountBalance;
  double get accountBalance => _accountBalance ?? 0.0;
  set accountBalance(double? val) => _accountBalance = val;
  void incrementAccountBalance(double amount) =>
      _accountBalance = accountBalance + amount;
  bool hasAccountBalance() => _accountBalance != null;

  // "accountTransactions" field.
  List<TransactionStruct>? _accountTransactions;
  List<TransactionStruct> get accountTransactions =>
      _accountTransactions ?? const [];
  set accountTransactions(List<TransactionStruct>? val) =>
      _accountTransactions = val;
  void updateAccountTransactions(Function(List<TransactionStruct>) updateFn) =>
      updateFn(_accountTransactions ??= []);
  bool hasAccountTransactions() => _accountTransactions != null;

  // "accountIncome" field.
  double? _accountIncome;
  double get accountIncome => _accountIncome ?? 0.0;
  set accountIncome(double? val) => _accountIncome = val;
  void incrementAccountIncome(double amount) =>
      _accountIncome = accountIncome + amount;
  bool hasAccountIncome() => _accountIncome != null;

  static AccountStruct fromMap(Map<String, dynamic> data) => AccountStruct(
        accountName: data['accountName'] as String?,
        accountBalance: castToType<double>(data['accountBalance']),
        accountTransactions: getStructList(
          data['accountTransactions'],
          TransactionStruct.fromMap,
        ),
        accountIncome: castToType<double>(data['accountIncome']),
      );

  static AccountStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AccountStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'accountName': _accountName,
        'accountBalance': _accountBalance,
        'accountTransactions':
            _accountTransactions?.map((e) => e.toMap()).toList(),
        'accountIncome': _accountIncome,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'accountBalance': serializeParam(
          _accountBalance,
          ParamType.double,
        ),
        'accountTransactions': serializeParam(
          _accountTransactions,
          ParamType.DataStruct,
          true,
        ),
        'accountIncome': serializeParam(
          _accountIncome,
          ParamType.double,
        ),
      }.withoutNulls;

  static AccountStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountStruct(
        accountName: deserializeParam(
          data['accountName'],
          ParamType.String,
          false,
        ),
        accountBalance: deserializeParam(
          data['accountBalance'],
          ParamType.double,
          false,
        ),
        accountTransactions: deserializeStructParam<TransactionStruct>(
          data['accountTransactions'],
          ParamType.DataStruct,
          true,
          structBuilder: TransactionStruct.fromSerializableMap,
        ),
        accountIncome: deserializeParam(
          data['accountIncome'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'AccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AccountStruct &&
        accountName == other.accountName &&
        accountBalance == other.accountBalance &&
        listEquality.equals(accountTransactions, other.accountTransactions) &&
        accountIncome == other.accountIncome;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([accountName, accountBalance, accountTransactions, accountIncome]);
}

AccountStruct createAccountStruct({
  String? accountName,
  double? accountBalance,
  double? accountIncome,
}) =>
    AccountStruct(
      accountName: accountName,
      accountBalance: accountBalance,
      accountIncome: accountIncome,
    );
