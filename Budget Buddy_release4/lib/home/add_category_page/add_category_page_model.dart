import '/flutter_flow/util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_category_page_widget.dart' show AddCategoryPageWidget;
import 'package:flutter/material.dart';

class AddCategoryPageModel extends FlutterFlowModel<AddCategoryPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for categoryTypeDrop widget.
  String? categoryTypeDropValue;
  FormFieldController<String>? categoryTypeDropValueController;
  // State field(s) for categoryNameField widget.
  FocusNode? categoryNameFieldFocusNode;
  TextEditingController? categoryNameFieldController;
  String? Function(BuildContext, String?)? categoryNameFieldControllerValidator;
  String? _categoryNameFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Category name is not specified';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    categoryNameFieldControllerValidator =
        _categoryNameFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    categoryNameFieldFocusNode?.dispose();
    categoryNameFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
