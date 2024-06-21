import '/flutter_flow/theme.dart';
import '/flutter_flow/util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'balance_card_comp_model.dart';
export 'balance_card_comp_model.dart';

class BalanceCardCompWidget extends StatefulWidget {
  const BalanceCardCompWidget({
    super.key,
    double? totalIncome,
    double? totalExpense,
    String? accountName,
  })  : totalIncome = totalIncome ?? 0.0,
        totalExpense = totalExpense ?? 0.0,
        accountName = accountName ?? 'None';

  final double totalIncome;
  final double totalExpense;
  final String accountName;

  @override
  _BalanceCardCompWidgetState createState() => _BalanceCardCompWidgetState();
}

class _BalanceCardCompWidgetState extends State<BalanceCardCompWidget> {
  late BalanceCardCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BalanceCardCompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.00, 0.00),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 20.0, 20.0),
        child: Container(
          width: 305.0,
          height: 193.0,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 5.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 0.0),
                spreadRadius: 5.0,
              )
            ],
            gradient: const LinearGradient(
              colors: [Color(0xFF054979), Colors.black],
              stops: [0.5, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        15.0, 15.0, 0.0, 0.0),
                    child: Text(
                      widget.accountName,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(
                    10.0, 30.0, 10.0, 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        formatNumber(
                          functions.differenceValue(
                              valueOrDefault<double>(
                                widget.totalIncome,
                                0.0,
                              ),
                              valueOrDefault<double>(
                                widget.totalExpense,
                                0.0,
                              )),
                          formatType: FormatType.decimal,
                          decimalType: DecimalType.commaDecimal,
                          currency: 'Rp',
                        ),
                        '0',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 32.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        15.0, 0.0, 0.0, 15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Text(
                            'Income',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            formatNumber(
                              widget.totalIncome,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.commaDecimal,
                              currency: 'Rp',
                            ),
                            '0',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: const Color(0xFF00B227),
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 0.0, 15.0, 15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Text(
                            'Expense',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            formatNumber(
                              widget.totalExpense,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.commaDecimal,
                              currency: 'Rp',
                            ),
                            '0',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: const Color(0xFFB20000),
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
