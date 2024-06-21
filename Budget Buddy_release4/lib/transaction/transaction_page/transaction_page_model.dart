import '/flutter_flow/calendar.dart';
import '/flutter_flow/util.dart';
import '/transaction/transaction_list_comp/transaction_list_comp_widget.dart';
import 'transaction_page_widget.dart' show TransactionPageWidget;
import 'package:flutter/material.dart';

class TransactionPageModel extends FlutterFlowModel<TransactionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for transactionListCalendar widget.
  DateTimeRange? transactionListCalendarSelectedDay;
  // Model for TransactionListComp component.
  late TransactionListCompModel transactionListCompModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    transactionListCalendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    transactionListCompModel =
        createModel(context, () => TransactionListCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    transactionListCompModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
