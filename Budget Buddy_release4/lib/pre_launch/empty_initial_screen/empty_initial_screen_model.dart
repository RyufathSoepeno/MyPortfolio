import '/flutter_flow/util.dart';
import 'empty_initial_screen_widget.dart' show EmptyInitialScreenWidget;
import 'package:flutter/material.dart';

class EmptyInitialScreenModel
    extends FlutterFlowModel<EmptyInitialScreenWidget> {
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
