import '/flutter_flow/util.dart';
import 'add_account_page_widget.dart' show AddAccountPageWidget;
import 'package:flutter/material.dart';

class AddAccountPageModel extends FlutterFlowModel<AddAccountPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for accountNameField widget.
  FocusNode? accountNameFieldFocusNode;
  TextEditingController? accountNameFieldController;
  String? Function(BuildContext, String?)? accountNameFieldControllerValidator;
  String? _accountNameFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Account name not specified';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for accountAmountField widget.
  FocusNode? accountAmountFieldFocusNode;
  TextEditingController? accountAmountFieldController;
  String? Function(BuildContext, String?)?
      accountAmountFieldControllerValidator;
  String? _accountAmountFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Account initial amount is not specified';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    accountNameFieldControllerValidator = _accountNameFieldControllerValidator;
    accountAmountFieldControllerValidator =
        _accountAmountFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    accountNameFieldFocusNode?.dispose();
    accountNameFieldController?.dispose();

    accountAmountFieldFocusNode?.dispose();
    accountAmountFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
