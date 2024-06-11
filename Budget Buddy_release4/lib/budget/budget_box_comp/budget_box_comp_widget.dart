import '/flutter_flow/theme.dart';
import '/flutter_flow/util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'budget_box_comp_model.dart';
export 'budget_box_comp_model.dart';

class BudgetBoxCompWidget extends StatefulWidget {
  const BudgetBoxCompWidget({
    super.key,
    String? budgetName,
    double? usedBudget,
    double? totalBudget,
  })  : budgetName = budgetName ?? 'None',
        usedBudget = usedBudget ?? 0.0,
        totalBudget = totalBudget ?? 0.0;

  final String budgetName;
  final double usedBudget;
  final double totalBudget;

  @override
  _BudgetBoxCompWidgetState createState() => _BudgetBoxCompWidgetState();
}

class _BudgetBoxCompWidgetState extends State<BudgetBoxCompWidget> {
  late BudgetBoxCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BudgetBoxCompModel());
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
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
      child: Container(
        width: double.infinity,
        height: 108.0,
        constraints: const BoxConstraints(
          minWidth: 360.0,
          maxHeight: 108.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 5.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 2.0),
              spreadRadius: 5.0,
            )
          ],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.budgetName,
                  'None',
                ),
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                      fontSize: 13.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodySmallFamily),
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.00, 0.00),
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 0.0, 10.0),
                child: Text(
                  valueOrDefault<String>(
                    formatNumber(
                      functions.differenceValue(
                          valueOrDefault<double>(
                            widget.totalBudget,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            widget.usedBudget,
                            0.0,
                          )),
                      formatType: FormatType.decimal,
                      decimalType: DecimalType.commaDecimal,
                      currency: 'Rp',
                    ),
                    '0',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleMediumFamily,
                        color: valueOrDefault<Color>(
                          functions.differenceValue(
                                      valueOrDefault<double>(
                                        widget.totalBudget,
                                        0.0,
                                      ),
                                      valueOrDefault<double>(
                                        widget.usedBudget,
                                        0.0,
                                      ))! <=
                                  0.0
                              ? const Color(0xFFB20000)
                              : const Color(0xFF00B227),
                          const Color(0xFF00B227),
                        ),
                        fontSize: 20.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleMediumFamily),
                      ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  width: double.infinity,
                  height: 12.0,
                  decoration: BoxDecoration(
                    color: const Color(0x00FFFFFF),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: LinearPercentIndicator(
                    percent: valueOrDefault<double>(
                      functions.maxProgress(valueOrDefault<double>(
                        functions.getBudgetProgress(
                            widget.usedBudget, widget.totalBudget),
                        0.0,
                      )),
                      0.0,
                    ),
                    lineHeight: 12.0,
                    animation: true,
                    animateFromLastPercent: true,
                    progressColor: valueOrDefault<Color>(
                      functions.getBudgetProgress(
                                  valueOrDefault<double>(
                                    widget.usedBudget,
                                    0.0,
                                  ),
                                  valueOrDefault<double>(
                                    widget.totalBudget,
                                    0.0,
                                  ))! >
                              1.0
                          ? const Color(0xFFB20000)
                          : const Color(0xFF054979),
                      const Color(0xFF054979),
                    ),
                    backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                    center: Text(
                      valueOrDefault<String>(
                        functions.doubleToPercentage(valueOrDefault<double>(
                          functions.getBudgetProgress(
                              valueOrDefault<double>(
                                widget.usedBudget,
                                0.0,
                              ),
                              valueOrDefault<double>(
                                widget.totalBudget,
                                0.0,
                              )),
                          0.0,
                        )),
                        '0',
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                fontSize: 9.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 5.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        formatNumber(
                          widget.usedBudget,
                          formatType: FormatType.decimal,
                          decimalType: DecimalType.commaDecimal,
                          currency: 'Rp',
                        ),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: valueOrDefault<Color>(
                              widget.usedBudget >
                                      valueOrDefault<double>(
                                        widget.totalBudget,
                                        0.0,
                                      )
                                  ? const Color(0xFFB20000)
                                  : Colors.white,
                              Colors.white,
                            ),
                            fontSize: 12.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      formatNumber(
                        widget.totalBudget,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.commaDecimal,
                        currency: 'Rp',
                      ),
                      '0',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          fontSize: 12.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
