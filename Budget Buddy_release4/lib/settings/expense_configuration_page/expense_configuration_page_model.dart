import '/flutter_flow/util.dart';
import 'expense_configuration_page_widget.dart'
    show ExpenseConfigurationPageWidget;
import 'package:flutter/material.dart';

class ExpenseConfigurationPageModel
    extends FlutterFlowModel<ExpenseConfigurationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
