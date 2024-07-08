// Ignore unnecessary getter and setter lint warnings for this file.
 // ignore_for_file: unnecessary_getters_setters

// Importing 'index.dart'.
import 'index.dart';
// Importing utility functions from the FlutterFlow package.
import '/flutter_flow/util.dart';

// Definition of the AccountStruct class which extends the BaseStruct class.
class AccountStruct extends BaseStruct {
  // Constructor for the AccountStruct class with named optional parameters.
  AccountStruct({
    String? accountName,
    double? accountBalance,
    List<TransactionStruct>? accountTransactions,
    double? accountIncome,
  })  : _accountName = accountName,
        _accountBalance = accountBalance,
        _accountTransactions = accountTransactions,
        _accountIncome = accountIncome;

  // Private field for account name.
  String? _accountName;
  // Getter for account name; returns an empty string if null.
  String get accountName => _accountName ?? '';
  // Setter for account name.
  set accountName(String? val) => _accountName = val;
  // Method to check if account name is not null.
  bool hasAccountName() => _accountName != null;

  // Private field for account balance.
  double? _accountBalance;
  // Getter for account balance; returns 0.0 if null.
  double get accountBalance => _accountBalance ?? 0.0;
  // Setter for account balance.
  set accountBalance(double? val) => _accountBalance = val;
  // Method to increment the account balance by a specified amount.
  void incrementAccountBalance(double amount) =>
      _accountBalance = accountBalance + amount;
  // Method to check if account balance is not null.
  bool hasAccountBalance() => _accountBalance != null;

  // Private field for account transactions.
  List<TransactionStruct>? _accountTransactions;
  // Getter for account transactions; returns an empty list if null.
  List<TransactionStruct> get accountTransactions =>
      _accountTransactions ?? const [];
  // Setter for account transactions.
  set accountTransactions(List<TransactionStruct>? val) =>
      _accountTransactions = val;
  // Method to update account transactions using a provided function.
  void updateAccountTransactions(Function(List<TransactionStruct>) updateFn) =>
      updateFn(_accountTransactions ??= []);
  // Method to check if account transactions are not null.
  bool hasAccountTransactions() => _accountTransactions != null;

  // Private field for account income.
  double? _accountIncome;
  // Getter for account income; returns 0.0 if null.
  double get accountIncome => _accountIncome ?? 0.0;
  // Setter for account income.
  set accountIncome(double? val) => _accountIncome = val;
  // Method to increment the account income by a specified amount.
  void incrementAccountIncome(double amount) =>
      _accountIncome = accountIncome + amount;
  // Method to check if account income is not null.
  bool hasAccountIncome() => _accountIncome != null;

  // Static method to create an AccountStruct from a map.
  static AccountStruct fromMap(Map<String, dynamic> data) => AccountStruct(
        accountName: data['accountName'] as String?,
        accountBalance: castToType<double>(data['accountBalance']),
        accountTransactions: getStructList(
          data['accountTransactions'],
          TransactionStruct.fromMap,
        ),
        accountIncome: castToType<double>(data['accountIncome']),
      );

  // Static method to create an AccountStruct from a map if the data is valid.
  static AccountStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AccountStruct.fromMap(data) : null;

  // Method to convert an AccountStruct to a map.
  Map<String, dynamic> toMap() => {
        'accountName': _accountName,
        'accountBalance': _accountBalance,
        'accountTransactions':
            _accountTransactions?.map((e) => e.toMap()).toList(),
        'accountIncome': _accountIncome,
      }.withoutNulls;

  // Override method to convert an AccountStruct to a serializable map.
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

  // Static method to create an AccountStruct from a serializable map.
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

  // Override method to return a string representation of the AccountStruct.
  @override
  String toString() => 'AccountStruct(${toMap()})';

  // Override equality operator to compare AccountStruct objects.
  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AccountStruct &&
        accountName == other.accountName &&
        accountBalance == other.accountBalance &&
        listEquality.equals(accountTransactions, other.accountTransactions) &&
        accountIncome == other.accountIncome;
  }

  // Override method to return the hash code for the AccountStruct.
  @override
  int get hashCode => const ListEquality()
      .hash([accountName, accountBalance, accountTransactions, accountIncome]);
}

// Function to create an AccountStruct with optional parameters.
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
