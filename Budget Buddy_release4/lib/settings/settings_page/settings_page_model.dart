import '/flutter_flow/util.dart';
import 'settings_page_widget.dart' show SettingsPageWidget;
import 'package:flutter/material.dart';

class SettingsPageModel extends FlutterFlowModel<SettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for biometricSettingSwitch widget.
  bool? biometricSettingSwitchValue;

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
