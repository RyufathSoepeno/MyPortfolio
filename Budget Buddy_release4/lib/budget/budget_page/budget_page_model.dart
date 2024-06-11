import '/backend/schema/structs/index.dart';
import '/budget/budget_box_comp/budget_box_comp_widget.dart';
import '/flutter_flow/util.dart';
import 'budget_page_widget.dart' show BudgetPageWidget;
import 'package:flutter/material.dart';

class BudgetPageModel extends FlutterFlowModel<BudgetPageWidget> {
  ///  Local state fields for this page.

  DateTime? currentDate;

  CategoryStruct? budgetList;
  void updateBudgetListStruct(Function(CategoryStruct) updateFn) =>
      updateFn(budgetList ??= CategoryStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for totalBudgetBox.
  late BudgetBoxCompModel totalBudgetBoxModel;
  // Models for BudgetBoxComp dynamic component.
  late FlutterFlowDynamicModels<BudgetBoxCompModel> budgetBoxCompModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    totalBudgetBoxModel = createModel(context, () => BudgetBoxCompModel());
    budgetBoxCompModels = FlutterFlowDynamicModels(() => BudgetBoxCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    totalBudgetBoxModel.dispose();
    budgetBoxCompModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
