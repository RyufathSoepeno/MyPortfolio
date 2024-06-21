import '/flutter_flow/util.dart';
import '/global/empty_widget_comp/empty_widget_comp_widget.dart';
import '/transaction/transaction_box_comp/transaction_box_comp_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'transaction_list_comp_model.dart';
export 'transaction_list_comp_model.dart';

class TransactionListCompWidget extends StatefulWidget {
  const TransactionListCompWidget({
    super.key,
    required this.selectedDate,
  });

  final DateTime? selectedDate;

  @override
  _TransactionListCompWidgetState createState() =>
      _TransactionListCompWidgetState();
}

class _TransactionListCompWidgetState extends State<TransactionListCompWidget> {
  late TransactionListCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionListCompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
      child: Builder(
        builder: (context) {
          final transaction = functions
                  .sortFilterTransaction(FFAppState().transactionList.toList(),
                      widget.selectedDate)
                  ?.map((e) => e)
                  .toList()
                  .toList() ??
              [];
          if (transaction.isEmpty) {
            return const EmptyWidgetCompWidget(
              emptyWidgetLabel: 'No Transaction Found.',
            );
          }
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(transaction.length, (transactionIndex) {
                final transactionItem = transaction[transactionIndex];
                return wrapWithModel(
                  model: _model.transactionBoxCompModels.getModel(
                    transactionIndex.toString(),
                    transactionIndex,
                  ),
                  updateCallback: () => setState(() {}),
                  updateOnChange: true,
                  child: TransactionBoxCompWidget(
                    key: Key(
                      'Keyunb_${transactionIndex.toString()}',
                    ),
                    transactionType: transactionItem.transactionType,
                    transactionIndex: transactionIndex,
                    transactionName: valueOrDefault<String>(
                      transactionItem.transactionName,
                      'No Name',
                    ),
                    transactionCategory: valueOrDefault<String>(
                      transactionItem.transactionCategory,
                      'No Category',
                    ),
                    transactionAmount: valueOrDefault<String>(
                      formatNumber(
                        transactionItem.transactionAmount,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.commaDecimal,
                        currency: 'Rp',
                      ),
                      'Rp0',
                    ),
                    transactionDate: transactionItem.transactionDate!,
                    transactionTime: transactionItem.transactionDate!,
                    transactionAccount: valueOrDefault<String>(
                      transactionItem.transactionAccount,
                      'No Account',
                    ),
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
