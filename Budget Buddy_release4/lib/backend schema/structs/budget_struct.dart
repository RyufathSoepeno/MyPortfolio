// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/util.dart';

class BudgetStruct extends BaseStruct {
  BudgetStruct({
    String? budgetName,
    double? budgetAmount,
    double? budgetUsedAmount,
  })  : _budgetName = budgetName,
        _budgetAmount = budgetAmount,
        _budgetUsedAmount = budgetUsedAmount;

  // "budgetName" field.
  String? _budgetName;
  String get budgetName => _budgetName ?? '';
  set budgetName(String? val) => _budgetName = val;
  bool hasBudgetName() => _budgetName != null;

  // "budgetAmount" field.
  double? _budgetAmount;
  double get budgetAmount => _budgetAmount ?? 0.0;
  set budgetAmount(double? val) => _budgetAmount = val;
  void incrementBudgetAmount(double amount) =>
      _budgetAmount = budgetAmount + amount;
  bool hasBudgetAmount() => _budgetAmount != null;

  // "budgetUsedAmount" field.
  double? _budgetUsedAmount;
  double get budgetUsedAmount => _budgetUsedAmount ?? 0.0;
  set budgetUsedAmount(double? val) => _budgetUsedAmount = val;
  void incrementBudgetUsedAmount(double amount) =>
      _budgetUsedAmount = budgetUsedAmount + amount;
  bool hasBudgetUsedAmount() => _budgetUsedAmount != null;

  static BudgetStruct fromMap(Map<String, dynamic> data) => BudgetStruct(
        budgetName: data['budgetName'] as String?,
        budgetAmount: castToType<double>(data['budgetAmount']),
        budgetUsedAmount: castToType<double>(data['budgetUsedAmount']),
      );

  static BudgetStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? BudgetStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'budgetName': _budgetName,
        'budgetAmount': _budgetAmount,
        'budgetUsedAmount': _budgetUsedAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'budgetName': serializeParam(
          _budgetName,
          ParamType.String,
        ),
        'budgetAmount': serializeParam(
          _budgetAmount,
          ParamType.double,
        ),
        'budgetUsedAmount': serializeParam(
          _budgetUsedAmount,
          ParamType.double,
        ),
      }.withoutNulls;

  static BudgetStruct fromSerializableMap(Map<String, dynamic> data) =>
      BudgetStruct(
        budgetName: deserializeParam(
          data['budgetName'],
          ParamType.String,
          false,
        ),
        budgetAmount: deserializeParam(
          data['budgetAmount'],
          ParamType.double,
          false,
        ),
        budgetUsedAmount: deserializeParam(
          data['budgetUsedAmount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'BudgetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BudgetStruct &&
        budgetName == other.budgetName &&
        budgetAmount == other.budgetAmount &&
        budgetUsedAmount == other.budgetUsedAmount;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([budgetName, budgetAmount, budgetUsedAmount]);
}

BudgetStruct createBudgetStruct({
  String? budgetName,
  double? budgetAmount,
  double? budgetUsedAmount,
}) =>
    BudgetStruct(
      budgetName: budgetName,
      budgetAmount: budgetAmount,
      budgetUsedAmount: budgetUsedAmount,
    );
