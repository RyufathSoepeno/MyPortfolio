// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/util.dart';

class CategoryStruct extends BaseStruct {
  CategoryStruct({
    String? categoryName,
    int? categoryAmount,
  })  : _categoryName = categoryName,
        _categoryAmount = categoryAmount;

  // "categoryName" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  set categoryName(String? val) => _categoryName = val;
  bool hasCategoryName() => _categoryName != null;

  // "categoryAmount" field.
  int? _categoryAmount;
  int get categoryAmount => _categoryAmount ?? 0;
  set categoryAmount(int? val) => _categoryAmount = val;
  void incrementCategoryAmount(int amount) =>
      _categoryAmount = categoryAmount + amount;
  bool hasCategoryAmount() => _categoryAmount != null;

  static CategoryStruct fromMap(Map<String, dynamic> data) => CategoryStruct(
        categoryName: data['categoryName'] as String?,
        categoryAmount: castToType<int>(data['categoryAmount']),
      );

  static CategoryStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CategoryStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'categoryName': _categoryName,
        'categoryAmount': _categoryAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'categoryName': serializeParam(
          _categoryName,
          ParamType.String,
        ),
        'categoryAmount': serializeParam(
          _categoryAmount,
          ParamType.int,
        ),
      }.withoutNulls;

  static CategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryStruct(
        categoryName: deserializeParam(
          data['categoryName'],
          ParamType.String,
          false,
        ),
        categoryAmount: deserializeParam(
          data['categoryAmount'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoryStruct &&
        categoryName == other.categoryName &&
        categoryAmount == other.categoryAmount;
  }

  @override
  int get hashCode => const ListEquality().hash([categoryName, categoryAmount]);
}

CategoryStruct createCategoryStruct({
  String? categoryName,
  int? categoryAmount,
}) =>
    CategoryStruct(
      categoryName: categoryName,
      categoryAmount: categoryAmount,
    );
