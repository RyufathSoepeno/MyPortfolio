import '/flutter_flow/util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_transaction_page_widget.dart' show AddTransactionPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddTransactionPageModel
    extends FlutterFlowModel<AddTransactionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for transactionTypeDrop widget.
  String? transactionTypeDropValue;
  FormFieldController<String>? transactionTypeDropValueController;
  // State field(s) for transactionNameField widget.
  FocusNode? transactionNameFieldFocusNode;
  TextEditingController? transactionNameFieldController;
  String? Function(BuildContext, String?)?
      transactionNameFieldControllerValidator;
  String? _transactionNameFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Transaction name not specified';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for transcationDateField widget.
  FocusNode? transcationDateFieldFocusNode;
  TextEditingController? transcationDateFieldController;
  final transcationDateFieldMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      transcationDateFieldControllerValidator;
  String? _transcationDateFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Transaction date not specfied';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for transactionAccountDrop widget.
  String? transactionAccountDropValue;
  FormFieldController<String>? transactionAccountDropValueController;
  // State field(s) for transactionCategoryDrop widget.
  String? transactionCategoryDropValue;
  FormFieldController<String>? transactionCategoryDropValueController;
  // State field(s) for transactionAmountField widget.
  FocusNode? transactionAmountFieldFocusNode;
  TextEditingController? transactionAmountFieldController;
  String? Function(BuildContext, String?)?
      transactionAmountFieldControllerValidator;
  String? _transactionAmountFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Transaction amount not specified';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    transactionNameFieldControllerValidator =
        _transactionNameFieldControllerValidator;
    transcationDateFieldControllerValidator =
        _transcationDateFieldControllerValidator;
    transactionAmountFieldControllerValidator =
        _transactionAmountFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    transactionNameFieldFocusNode?.dispose();
    transactionNameFieldController?.dispose();

    transcationDateFieldFocusNode?.dispose();
    transcationDateFieldController?.dispose();

    transactionAmountFieldFocusNode?.dispose();
    transactionAmountFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
