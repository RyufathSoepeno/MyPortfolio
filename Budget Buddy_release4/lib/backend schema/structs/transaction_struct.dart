// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/util.dart';

class TransactionStruct extends BaseStruct {
  TransactionStruct({
    String? transactionName,
    int? transactionAmount,
    DateTime? transactionDate,
    String? transactionType,
    String? transactionAccount,
    String? transactionCategory,
  })  : _transactionName = transactionName,
        _transactionAmount = transactionAmount,
        _transactionDate = transactionDate,
        _transactionType = transactionType,
        _transactionAccount = transactionAccount,
        _transactionCategory = transactionCategory;

  // "transactionName" field.
  String? _transactionName;
  String get transactionName => _transactionName ?? '';
  set transactionName(String? val) => _transactionName = val;
  bool hasTransactionName() => _transactionName != null;

  // "transactionAmount" field.
  int? _transactionAmount;
  int get transactionAmount => _transactionAmount ?? 0;
  set transactionAmount(int? val) => _transactionAmount = val;
  void incrementTransactionAmount(int amount) =>
      _transactionAmount = transactionAmount + amount;
  bool hasTransactionAmount() => _transactionAmount != null;

  // "transactionDate" field.
  DateTime? _transactionDate;
  DateTime? get transactionDate => _transactionDate;
  set transactionDate(DateTime? val) => _transactionDate = val;
  bool hasTransactionDate() => _transactionDate != null;

  // "transactionType" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;
  bool hasTransactionType() => _transactionType != null;

  // "transactionAccount" field.
  String? _transactionAccount;
  String get transactionAccount => _transactionAccount ?? '';
  set transactionAccount(String? val) => _transactionAccount = val;
  bool hasTransactionAccount() => _transactionAccount != null;

  // "transactionCategory" field.
  String? _transactionCategory;
  String get transactionCategory => _transactionCategory ?? '';
  set transactionCategory(String? val) => _transactionCategory = val;
  bool hasTransactionCategory() => _transactionCategory != null;

  static TransactionStruct fromMap(Map<String, dynamic> data) =>
      TransactionStruct(
        transactionName: data['transactionName'] as String?,
        transactionAmount: castToType<int>(data['transactionAmount']),
        transactionDate: data['transactionDate'] as DateTime?,
        transactionType: data['transactionType'] as String?,
        transactionAccount: data['transactionAccount'] as String?,
        transactionCategory: data['transactionCategory'] as String?,
      );

  static TransactionStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TransactionStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'transactionName': _transactionName,
        'transactionAmount': _transactionAmount,
        'transactionDate': _transactionDate,
        'transactionType': _transactionType,
        'transactionAccount': _transactionAccount,
        'transactionCategory': _transactionCategory,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'transactionName': serializeParam(
          _transactionName,
          ParamType.String,
        ),
        'transactionAmount': serializeParam(
          _transactionAmount,
          ParamType.int,
        ),
        'transactionDate': serializeParam(
          _transactionDate,
          ParamType.DateTime,
        ),
        'transactionType': serializeParam(
          _transactionType,
          ParamType.String,
        ),
        'transactionAccount': serializeParam(
          _transactionAccount,
          ParamType.String,
        ),
        'transactionCategory': serializeParam(
          _transactionCategory,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransactionStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionStruct(
        transactionName: deserializeParam(
          data['transactionName'],
          ParamType.String,
          false,
        ),
        transactionAmount: deserializeParam(
          data['transactionAmount'],
          ParamType.int,
          false,
        ),
        transactionDate: deserializeParam(
          data['transactionDate'],
          ParamType.DateTime,
          false,
        ),
        transactionType: deserializeParam(
          data['transactionType'],
          ParamType.String,
          false,
        ),
        transactionAccount: deserializeParam(
          data['transactionAccount'],
          ParamType.String,
          false,
        ),
        transactionCategory: deserializeParam(
          data['transactionCategory'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransactionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionStruct &&
        transactionName == other.transactionName &&
        transactionAmount == other.transactionAmount &&
        transactionDate == other.transactionDate &&
        transactionType == other.transactionType &&
        transactionAccount == other.transactionAccount &&
        transactionCategory == other.transactionCategory;
  }

  @override
  int get hashCode => const ListEquality().hash([
        transactionName,
        transactionAmount,
        transactionDate,
        transactionType,
        transactionAccount,
        transactionCategory
      ]);
}

TransactionStruct createTransactionStruct({
  String? transactionName,
  int? transactionAmount,
  DateTime? transactionDate,
  String? transactionType,
  String? transactionAccount,
  String? transactionCategory,
}) =>
    TransactionStruct(
      transactionName: transactionName,
      transactionAmount: transactionAmount,
      transactionDate: transactionDate,
      transactionType: transactionType,
      transactionAccount: transactionAccount,
      transactionCategory: transactionCategory,
    );
