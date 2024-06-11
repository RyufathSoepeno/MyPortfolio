import '/flutter_flow/util.dart';
import 'edit_budget_page_widget.dart' show EditBudgetPageWidget;
import 'package:flutter/material.dart';

class EditBudgetPageModel extends FlutterFlowModel<EditBudgetPageWidget> {
  ///  Local state fields for this page.

  int? transactionAmount = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for budgetEditNameField widget.
  FocusNode? budgetEditNameFieldFocusNode;
  TextEditingController? budgetEditNameFieldController;
  String? Function(BuildContext, String?)?
      budgetEditNameFieldControllerValidator;
  // State field(s) for budgetEditAmountField widget.
  FocusNode? budgetEditAmountFieldFocusNode;
  TextEditingController? budgetEditAmountFieldController;
  String? Function(BuildContext, String?)?
      budgetEditAmountFieldControllerValidator;
  String? _budgetEditAmountFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Budget amount is not specified';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    budgetEditAmountFieldControllerValidator =
        _budgetEditAmountFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    budgetEditNameFieldFocusNode?.dispose();
    budgetEditNameFieldController?.dispose();

    budgetEditAmountFieldFocusNode?.dispose();
    budgetEditAmountFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
