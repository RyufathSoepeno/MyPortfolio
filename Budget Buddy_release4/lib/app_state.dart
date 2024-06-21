import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _accountList = prefs
              .getStringList('ff_accountList')
              ?.map((x) {
                try {
                  return AccountStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _accountList;
    });
    _safeInit(() {
      _transactionList = prefs
              .getStringList('ff_transactionList')
              ?.map((x) {
                try {
                  return TransactionStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _transactionList;
    });
    _safeInit(() {
      _transType = prefs.getStringList('ff_transType') ?? _transType;
    });
    _safeInit(() {
      _budgetList = prefs
              .getStringList('ff_budgetList')
              ?.map((x) {
                try {
                  return BudgetStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _budgetList;
    });
    _safeInit(() {
      _incomeCategoryList = prefs
              .getStringList('ff_incomeCategoryList')
              ?.map((x) {
                try {
                  return CategoryStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _incomeCategoryList;
    });
    _safeInit(() {
      _expenseCategoryList = prefs
              .getStringList('ff_expenseCategoryList')
              ?.map((x) {
                try {
                  return CategoryStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _expenseCategoryList;
    });
    _safeInit(() {
      _biometric = prefs.getBool('ff_biometric') ?? _biometric;
    });
    _safeInit(() {
      _totalBudget = prefs.getDouble('ff_totalBudget') ?? _totalBudget;
    });
    _safeInit(() {
      _totalUsedBudget =
          prefs.getDouble('ff_totalUsedBudget') ?? _totalUsedBudget;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<AccountStruct> _accountList = [
    AccountStruct.fromSerializableMap(
        jsonDecode('{"accountName":"Bank","accountBalance":"0"}')),
    AccountStruct.fromSerializableMap(
        jsonDecode('{"accountName":"Cash","accountBalance":"0"}'))
  ];
  List<AccountStruct> get accountList => _accountList;
  set accountList(List<AccountStruct> value) {
    _accountList = value;
    prefs.setStringList(
        'ff_accountList', value.map((x) => x.serialize()).toList());
  }

  void addToAccountList(AccountStruct value) {
    _accountList.add(value);
    prefs.setStringList(
        'ff_accountList', _accountList.map((x) => x.serialize()).toList());
  }

  void removeFromAccountList(AccountStruct value) {
    _accountList.remove(value);
    prefs.setStringList(
        'ff_accountList', _accountList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAccountList(int index) {
    _accountList.removeAt(index);
    prefs.setStringList(
        'ff_accountList', _accountList.map((x) => x.serialize()).toList());
  }

  void updateAccountListAtIndex(
    int index,
    AccountStruct Function(AccountStruct) updateFn,
  ) {
    _accountList[index] = updateFn(_accountList[index]);
    prefs.setStringList(
        'ff_accountList', _accountList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAccountList(int index, AccountStruct value) {
    _accountList.insert(index, value);
    prefs.setStringList(
        'ff_accountList', _accountList.map((x) => x.serialize()).toList());
  }

  List<TransactionStruct> _transactionList = [];
  List<TransactionStruct> get transactionList => _transactionList;
  set transactionList(List<TransactionStruct> value) {
    _transactionList = value;
    prefs.setStringList(
        'ff_transactionList', value.map((x) => x.serialize()).toList());
  }

  void addToTransactionList(TransactionStruct value) {
    _transactionList.add(value);
    prefs.setStringList('ff_transactionList',
        _transactionList.map((x) => x.serialize()).toList());
  }

  void removeFromTransactionList(TransactionStruct value) {
    _transactionList.remove(value);
    prefs.setStringList('ff_transactionList',
        _transactionList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTransactionList(int index) {
    _transactionList.removeAt(index);
    prefs.setStringList('ff_transactionList',
        _transactionList.map((x) => x.serialize()).toList());
  }

  void updateTransactionListAtIndex(
    int index,
    TransactionStruct Function(TransactionStruct) updateFn,
  ) {
    _transactionList[index] = updateFn(_transactionList[index]);
    prefs.setStringList('ff_transactionList',
        _transactionList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTransactionList(int index, TransactionStruct value) {
    _transactionList.insert(index, value);
    prefs.setStringList('ff_transactionList',
        _transactionList.map((x) => x.serialize()).toList());
  }

  List<String> _transType = ['Expense', 'Income'];
  List<String> get transType => _transType;
  set transType(List<String> value) {
    _transType = value;
    prefs.setStringList('ff_transType', value);
  }

  void addToTransType(String value) {
    _transType.add(value);
    prefs.setStringList('ff_transType', _transType);
  }

  void removeFromTransType(String value) {
    _transType.remove(value);
    prefs.setStringList('ff_transType', _transType);
  }

  void removeAtIndexFromTransType(int index) {
    _transType.removeAt(index);
    prefs.setStringList('ff_transType', _transType);
  }

  void updateTransTypeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _transType[index] = updateFn(_transType[index]);
    prefs.setStringList('ff_transType', _transType);
  }

  void insertAtIndexInTransType(int index, String value) {
    _transType.insert(index, value);
    prefs.setStringList('ff_transType', _transType);
  }

  List<BudgetStruct> _budgetList = [
    BudgetStruct.fromSerializableMap(jsonDecode(
        '{"budgetName":"Food","budgetAmount":"1200000","budgetUsedAmount":"0"}'))
  ];
  List<BudgetStruct> get budgetList => _budgetList;
  set budgetList(List<BudgetStruct> value) {
    _budgetList = value;
    prefs.setStringList(
        'ff_budgetList', value.map((x) => x.serialize()).toList());
  }

  void addToBudgetList(BudgetStruct value) {
    _budgetList.add(value);
    prefs.setStringList(
        'ff_budgetList', _budgetList.map((x) => x.serialize()).toList());
  }

  void removeFromBudgetList(BudgetStruct value) {
    _budgetList.remove(value);
    prefs.setStringList(
        'ff_budgetList', _budgetList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromBudgetList(int index) {
    _budgetList.removeAt(index);
    prefs.setStringList(
        'ff_budgetList', _budgetList.map((x) => x.serialize()).toList());
  }

  void updateBudgetListAtIndex(
    int index,
    BudgetStruct Function(BudgetStruct) updateFn,
  ) {
    _budgetList[index] = updateFn(_budgetList[index]);
    prefs.setStringList(
        'ff_budgetList', _budgetList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInBudgetList(int index, BudgetStruct value) {
    _budgetList.insert(index, value);
    prefs.setStringList(
        'ff_budgetList', _budgetList.map((x) => x.serialize()).toList());
  }

  List<CategoryStruct> _incomeCategoryList = [
    CategoryStruct.fromSerializableMap(jsonDecode('{"categoryName":"Salary"}')),
    CategoryStruct.fromSerializableMap(
        jsonDecode('{"categoryName":"Allowance"}'))
  ];
  List<CategoryStruct> get incomeCategoryList => _incomeCategoryList;
  set incomeCategoryList(List<CategoryStruct> value) {
    _incomeCategoryList = value;
    prefs.setStringList(
        'ff_incomeCategoryList', value.map((x) => x.serialize()).toList());
  }

  void addToIncomeCategoryList(CategoryStruct value) {
    _incomeCategoryList.add(value);
    prefs.setStringList('ff_incomeCategoryList',
        _incomeCategoryList.map((x) => x.serialize()).toList());
  }

  void removeFromIncomeCategoryList(CategoryStruct value) {
    _incomeCategoryList.remove(value);
    prefs.setStringList('ff_incomeCategoryList',
        _incomeCategoryList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromIncomeCategoryList(int index) {
    _incomeCategoryList.removeAt(index);
    prefs.setStringList('ff_incomeCategoryList',
        _incomeCategoryList.map((x) => x.serialize()).toList());
  }

  void updateIncomeCategoryListAtIndex(
    int index,
    CategoryStruct Function(CategoryStruct) updateFn,
  ) {
    _incomeCategoryList[index] = updateFn(_incomeCategoryList[index]);
    prefs.setStringList('ff_incomeCategoryList',
        _incomeCategoryList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInIncomeCategoryList(int index, CategoryStruct value) {
    _incomeCategoryList.insert(index, value);
    prefs.setStringList('ff_incomeCategoryList',
        _incomeCategoryList.map((x) => x.serialize()).toList());
  }

  List<CategoryStruct> _expenseCategoryList = [
    CategoryStruct.fromSerializableMap(jsonDecode('{"categoryName":"Food"}')),
    CategoryStruct.fromSerializableMap(
        jsonDecode('{"categoryName":"Toiletries"}'))
  ];
  List<CategoryStruct> get expenseCategoryList => _expenseCategoryList;
  set expenseCategoryList(List<CategoryStruct> value) {
    _expenseCategoryList = value;
    prefs.setStringList(
        'ff_expenseCategoryList', value.map((x) => x.serialize()).toList());
  }

  void addToExpenseCategoryList(CategoryStruct value) {
    _expenseCategoryList.add(value);
    prefs.setStringList('ff_expenseCategoryList',
        _expenseCategoryList.map((x) => x.serialize()).toList());
  }

  void removeFromExpenseCategoryList(CategoryStruct value) {
    _expenseCategoryList.remove(value);
    prefs.setStringList('ff_expenseCategoryList',
        _expenseCategoryList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromExpenseCategoryList(int index) {
    _expenseCategoryList.removeAt(index);
    prefs.setStringList('ff_expenseCategoryList',
        _expenseCategoryList.map((x) => x.serialize()).toList());
  }

  void updateExpenseCategoryListAtIndex(
    int index,
    CategoryStruct Function(CategoryStruct) updateFn,
  ) {
    _expenseCategoryList[index] = updateFn(_expenseCategoryList[index]);
    prefs.setStringList('ff_expenseCategoryList',
        _expenseCategoryList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInExpenseCategoryList(int index, CategoryStruct value) {
    _expenseCategoryList.insert(index, value);
    prefs.setStringList('ff_expenseCategoryList',
        _expenseCategoryList.map((x) => x.serialize()).toList());
  }

  DateTime? _selectedDate = DateTime.fromMillisecondsSinceEpoch(1701869640000);
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? value) {
    _selectedDate = value;
  }

  bool _biometric = false;
  bool get biometric => _biometric;
  set biometric(bool value) {
    _biometric = value;
    prefs.setBool('ff_biometric', value);
  }

  double _totalBudget = 0;
  double get totalBudget => _totalBudget;
  set totalBudget(double value) {
    _totalBudget = value;
    prefs.setDouble('ff_totalBudget', value);
  }

  double _totalUsedBudget = 0;
  double get totalUsedBudget => _totalUsedBudget;
  set totalUsedBudget(double value) {
    _totalUsedBudget = value;
    prefs.setDouble('ff_totalUsedBudget', value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
