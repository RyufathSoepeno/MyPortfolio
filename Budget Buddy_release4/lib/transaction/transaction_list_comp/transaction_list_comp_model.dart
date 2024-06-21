import '/backend/schema/structs/index.dart';
import '/flutter_flow/util.dart';
import '/transaction/transaction_box_comp/transaction_box_comp_widget.dart';
import 'transaction_list_comp_widget.dart' show TransactionListCompWidget;
import 'package:flutter/material.dart';

class TransactionListCompModel
    extends FlutterFlowModel<TransactionListCompWidget> {
  ///  Local state fields for this component.

  List<TransactionStruct> sortedTransactions = [];
  void addToSortedTransactions(TransactionStruct item) =>
      sortedTransactions.add(item);
  void removeFromSortedTransactions(TransactionStruct item) =>
      sortedTransactions.remove(item);
  void removeAtIndexFromSortedTransactions(int index) =>
      sortedTransactions.removeAt(index);
  void insertAtIndexInSortedTransactions(int index, TransactionStruct item) =>
      sortedTransactions.insert(index, item);
  void updateSortedTransactionsAtIndex(
          int index, Function(TransactionStruct) updateFn) =>
      sortedTransactions[index] = updateFn(sortedTransactions[index]);

  ///  State fields for stateful widgets in this component.

  // Models for TransactionBoxComp dynamic component.
  late FlutterFlowDynamicModels<TransactionBoxCompModel>
      transactionBoxCompModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    transactionBoxCompModels =
        FlutterFlowDynamicModels(() => TransactionBoxCompModel());
  }

  @override
  void dispose() {
    transactionBoxCompModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
