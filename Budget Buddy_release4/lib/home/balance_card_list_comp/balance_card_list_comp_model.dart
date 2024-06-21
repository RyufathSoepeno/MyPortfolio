import '/flutter_flow/util.dart';
import '/home/balance_card_comp/balance_card_comp_widget.dart';
import 'balance_card_list_comp_widget.dart' show BalanceCardListCompWidget;
import 'package:flutter/material.dart';

class BalanceCardListCompModel
    extends FlutterFlowModel<BalanceCardListCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for BalanceCardComp dynamic component.
  late FlutterFlowDynamicModels<BalanceCardCompModel> balanceCardCompModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    balanceCardCompModels =
        FlutterFlowDynamicModels(() => BalanceCardCompModel());
  }

  @override
  void dispose() {
    balanceCardCompModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
