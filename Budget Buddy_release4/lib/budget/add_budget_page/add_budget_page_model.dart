import '/flutter_flow/util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_budget_page_widget.dart' show AddBudgetPageWidget;
import 'package:flutter/material.dart';

class AddBudgetPageModel extends FlutterFlowModel<AddBudgetPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for budgetTypeDropdown widget.
  String? budgetTypeDropdownValue;
  FormFieldController<String>? budgetTypeDropdownValueController;
  // State field(s) for budgetInitalAmount widget.
  FocusNode? budgetInitalAmountFocusNode;
  TextEditingController? budgetInitalAmountController;
  String? Function(BuildContext, String?)?
      budgetInitalAmountControllerValidator;
  String? _budgetInitalAmountControllerValidator(
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
    budgetInitalAmountControllerValidator =
        _budgetInitalAmountControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    budgetInitalAmountFocusNode?.dispose();
    budgetInitalAmountController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
