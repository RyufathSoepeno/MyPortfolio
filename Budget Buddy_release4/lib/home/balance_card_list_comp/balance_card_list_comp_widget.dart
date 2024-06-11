import '/flutter_flow/util.dart';
import '/home/balance_card_comp/balance_card_comp_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'balance_card_list_comp_model.dart';
export 'balance_card_list_comp_model.dart';

class BalanceCardListCompWidget extends StatefulWidget {
  const BalanceCardListCompWidget({super.key});

  @override
  _BalanceCardListCompWidgetState createState() =>
      _BalanceCardListCompWidgetState();
}

class _BalanceCardListCompWidgetState extends State<BalanceCardListCompWidget> {
  late BalanceCardListCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BalanceCardListCompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        final accountCard = FFAppState().accountList.toList();
        return Row(
          mainAxisSize: MainAxisSize.max,
          children: List.generate(accountCard.length, (accountCardIndex) {
            final accountCardItem = accountCard[accountCardIndex];
            return wrapWithModel(
              model: _model.balanceCardCompModels.getModel(
                accountCardIndex.toString(),
                accountCardIndex,
              ),
              updateCallback: () => setState(() {}),
              updateOnChange: true,
              child: BalanceCardCompWidget(
                key: Key(
                  'Key736_${accountCardIndex.toString()}',
                ),
                totalIncome: valueOrDefault<double>(
                  functions.getAccountAmount(
                      valueOrDefault<String>(
                        accountCardItem.accountName,
                        'None',
                      ),
                      'Income',
                      FFAppState().transactionList.toList()),
                  0.0,
                ),
                totalExpense: valueOrDefault<double>(
                  functions.getAccountAmount(
                      valueOrDefault<String>(
                        accountCardItem.accountName,
                        'None',
                      ),
                      'Expense',
                      FFAppState().transactionList.toList()),
                  0.0,
                ),
                accountName: valueOrDefault<String>(
                  accountCardItem.accountName,
                  'None',
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
