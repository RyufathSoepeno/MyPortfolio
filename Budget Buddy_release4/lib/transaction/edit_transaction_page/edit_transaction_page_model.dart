import '/flutter_flow/util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_transaction_page_widget.dart' show EditTransactionPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditTransactionPageModel
    extends FlutterFlowModel<EditTransactionPageWidget> {
  ///  Local state fields for this page.

  int? transactioAmount = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for transactionEditTypeDrop widget.
  String? transactionEditTypeDropValue;
  FormFieldController<String>? transactionEditTypeDropValueController;
  // State field(s) for transactionEditNameField widget.
  FocusNode? transactionEditNameFieldFocusNode;
  TextEditingController? transactionEditNameFieldController;
  String? Function(BuildContext, String?)?
      transactionEditNameFieldControllerValidator;
  String? _transactionEditNameFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Transaction name not specified';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for transactionEditDateField widget.
  FocusNode? transactionEditDateFieldFocusNode;
  TextEditingController? transactionEditDateFieldController;
  final transactionEditDateFieldMask =
      MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      transactionEditDateFieldControllerValidator;
  String? _transactionEditDateFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Missing Date';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for transactionEditAccountDrop widget.
  String? transactionEditAccountDropValue;
  FormFieldController<String>? transactionEditAccountDropValueController;
  // State field(s) for transactionEditCategoryDrop widget.
  String? transactionEditCategoryDropValue;
  FormFieldController<String>? transactionEditCategoryDropValueController;
  // State field(s) for transactionEditAmountField widget.
  FocusNode? transactionEditAmountFieldFocusNode;
  TextEditingController? transactionEditAmountFieldController;
  String? Function(BuildContext, String?)?
      transactionEditAmountFieldControllerValidator;
  String? _transactionEditAmountFieldControllerValidator(
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
    transactionEditNameFieldControllerValidator =
        _transactionEditNameFieldControllerValidator;
    transactionEditDateFieldControllerValidator =
        _transactionEditDateFieldControllerValidator;
    transactionEditAmountFieldControllerValidator =
        _transactionEditAmountFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    transactionEditNameFieldFocusNode?.dispose();
    transactionEditNameFieldController?.dispose();

    transactionEditDateFieldFocusNode?.dispose();
    transactionEditDateFieldController?.dispose();

    transactionEditAmountFieldFocusNode?.dispose();
    transactionEditAmountFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
