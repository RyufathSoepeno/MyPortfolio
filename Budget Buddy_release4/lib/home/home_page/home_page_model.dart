import '/budget/budget_box_comp/budget_box_comp_widget.dart';
import '/flutter_flow/util.dart';
import '/home/balance_card_comp/balance_card_comp_widget.dart';
import '/home/balance_card_list_comp/balance_card_list_comp_widget.dart';
import '/transaction/transaction_list_comp/transaction_list_comp_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for totalBalanceCard.
  late BalanceCardCompModel totalBalanceCardModel;
  // Model for accountBalanceCardList.
  late BalanceCardListCompModel accountBalanceCardListModel;
  // Model for BudgetBoxComp component.
  late BudgetBoxCompModel budgetBoxCompModel;
  // Model for TransactionListComp component.
  late TransactionListCompModel transactionListCompModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    totalBalanceCardModel = createModel(context, () => BalanceCardCompModel());
    accountBalanceCardListModel =
        createModel(context, () => BalanceCardListCompModel());
    budgetBoxCompModel = createModel(context, () => BudgetBoxCompModel());
    transactionListCompModel =
        createModel(context, () => TransactionListCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    totalBalanceCardModel.dispose();
    accountBalanceCardListModel.dispose();
    budgetBoxCompModel.dispose();
    transactionListCompModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
