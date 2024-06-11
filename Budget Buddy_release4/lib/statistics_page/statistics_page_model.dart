import '/backend/schema/structs/index.dart';
import '/flutter_flow/util.dart';
import '/statistics/category_box_component/category_box_component_widget.dart';
import 'statistics_page_widget.dart' show StatisticsPageWidget;
import 'package:flutter/material.dart';

class StatisticsPageModel extends FlutterFlowModel<StatisticsPageWidget> {
  ///  Local state fields for this page.

  DateTime? currentDate;

  bool type = true;

  CategoryStruct? categoryAmounts;
  void updateCategoryAmountsStruct(Function(CategoryStruct) updateFn) =>
      updateFn(categoryAmounts ??= CategoryStruct());

  List<CategoryStruct> statisticCategories = [];
  void addToStatisticCategories(CategoryStruct item) =>
      statisticCategories.add(item);
  void removeFromStatisticCategories(CategoryStruct item) =>
      statisticCategories.remove(item);
  void removeAtIndexFromStatisticCategories(int index) =>
      statisticCategories.removeAt(index);
  void insertAtIndexInStatisticCategories(int index, CategoryStruct item) =>
      statisticCategories.insert(index, item);
  void updateStatisticCategoriesAtIndex(
          int index, Function(CategoryStruct) updateFn) =>
      statisticCategories[index] = updateFn(statisticCategories[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for categoryBoxComponent dynamic component.
  late FlutterFlowDynamicModels<CategoryBoxComponentModel>
      categoryBoxComponentModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    categoryBoxComponentModels =
        FlutterFlowDynamicModels(() => CategoryBoxComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    categoryBoxComponentModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
