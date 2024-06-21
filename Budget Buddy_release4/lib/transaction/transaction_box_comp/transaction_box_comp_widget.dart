import '/flutter_flow/theme.dart';
import '/flutter_flow/util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'transaction_box_comp_model.dart';
export 'transaction_box_comp_model.dart';

class TransactionBoxCompWidget extends StatefulWidget {
  const TransactionBoxCompWidget({
    super.key,
    this.transactionName,
    this.transactionCategory,
    this.transactionAmount,
    this.transactionType,
    required this.transactionDate,
    required this.transactionTime,
    this.transactionAccount,
    this.transactionIndex,
  });

  final String? transactionName;
  final String? transactionCategory;
  final String? transactionAmount;
  final String? transactionType;
  final DateTime? transactionDate;
  final DateTime? transactionTime;
  final String? transactionAccount;
  final int? transactionIndex;

  @override
  _TransactionBoxCompWidgetState createState() =>
      _TransactionBoxCompWidgetState();
}

class _TransactionBoxCompWidgetState extends State<TransactionBoxCompWidget> {
  late TransactionBoxCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionBoxCompModel());
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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          // navigateToEditTransPg

          context.pushNamed(
            'EditTransactionPage',
            queryParameters: {
              'transItemIndex': serializeParam(
                widget.transactionIndex,
                ParamType.int,
              ),
            }.withoutNulls,
          );
        },
        child: Container(
          height: 82.0,
          decoration: BoxDecoration(
            color: const Color(0xFF121212),
            boxShadow: const [
              BoxShadow(
                blurRadius: 5.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 0.0),
                spreadRadius: 5.0,
              )
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        15.0, 10.0, 0.0, 0.0),
                    child: Text(
                      widget.transactionName!,
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 5.0, 0.0, 0.0),
                        child: Text(
                          widget.transactionCategory!,
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodySmall,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.00, 0.00),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 5.0, 0.0, 10.0),
                      child: Text(
                        widget.transactionAmount!,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .titleMediumFamily,
                              color: () {
                                if (widget.transactionType == 'Expense') {
                                  return const Color(0xFFB20000);
                                } else if (widget.transactionType == 'Income') {
                                  return const Color(0xFF00B227);
                                } else {
                                  return Colors.white;
                                }
                              }(),
                              fontSize: 20.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleMediumFamily),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 10.0, 15.0, 0.0),
                    child: Text(
                      dateTimeFormat('d/M/y', widget.transactionDate),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 12.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 10.0, 15.0, 0.0),
                      child: Text(
                        dateTimeFormat('jm', widget.transactionTime),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 12.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 10.0, 15.0, 0.0),
                    child: Text(
                      widget.transactionAccount!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 12.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
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
