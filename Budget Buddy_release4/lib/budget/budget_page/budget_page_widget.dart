import '/budget/budget_box_comp/budget_box_comp_widget.dart';
import '/flutter_flow/theme.dart';
import '/flutter_flow/util.dart';
import '/flutter_flow/widgets.dart';
import '/global/empty_widget_comp/empty_widget_comp_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'budget_page_model.dart';
export 'budget_page_model.dart';

class BudgetPageWidget extends StatefulWidget {
  const BudgetPageWidget({super.key});

  @override
  _BudgetPageWidgetState createState() => _BudgetPageWidgetState();
}

class _BudgetPageWidgetState extends State<BudgetPageWidget> {
  late BudgetPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BudgetPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.currentDate = getCurrentTimestamp;
      });
      setState(() {
        FFAppState().totalBudget = valueOrDefault<double>(
          functions.getTotalBudgetAmount(
              FFAppState().budgetList.toList(), FFAppState().totalBudget),
          0.0,
        );
        FFAppState().totalUsedBudget = valueOrDefault<double>(
          functions.getTotalUsedBudget(
              FFAppState().budgetList.toList(), FFAppState().totalUsedBudget),
          0.0,
        );
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF121212),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // navigateToAddTrans

            context.pushNamed('AddTransactionPage');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: Icon(
            Icons.add_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 40.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text(
            'Budgets',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).titleMedium,
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        5.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        // goPrevMonth
                        setState(() {
                          _model.currentDate =
                              functions.newDate(_model.currentDate, false);
                        });
                      },
                      child: const Icon(
                        Icons.chevron_left_rounded,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 10.0, 0.0, 10.0),
                    child: Text(
                      dateTimeFormat('MMMM y', _model.currentDate),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 18.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 0.0, 5.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        // goNextMonth
                        setState(() {
                          _model.currentDate =
                              functions.newDate(_model.currentDate, true);
                        });
                      },
                      child: const Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 212.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 5.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                // navigateToAddBudget

                                context.pushNamed('AddBudgetPage');
                              },
                              text: 'Add New Budget',
                              icon: const Icon(
                                Icons.add_shopping_cart_rounded,
                                size: 31.0,
                              ),
                              options: FFButtonOptions(
                                width: 225.0,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.white,
                                      fontSize: 13.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 5.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.totalBudgetBoxModel,
                          updateCallback: () => setState(() {}),
                          updateOnChange: true,
                          child: BudgetBoxCompWidget(
                            budgetName: 'Total Budget',
                            usedBudget: valueOrDefault<double>(
                              FFAppState().totalUsedBudget,
                              0.0,
                            ),
                            totalBudget: valueOrDefault<double>(
                              FFAppState().totalBudget,
                              0.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: ClipRRect(
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Builder(
                              builder: (context) {
                                final budget = FFAppState().budgetList.toList();
                                if (budget.isEmpty) {
                                  return const EmptyWidgetCompWidget(
                                    emptyWidgetLabel: 'No Budget Found.',
                                  );
                                }
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: List.generate(budget.length,
                                        (budgetIndex) {
                                      final budgetItem = budget[budgetIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          // navigateToEditBudget

                                          context.pushNamed(
                                            'EditBudgetPage',
                                            queryParameters: {
                                              'budgetIndex': serializeParam(
                                                budgetIndex,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: wrapWithModel(
                                          model: _model.budgetBoxCompModels
                                              .getModel(
                                            budgetIndex.toString(),
                                            budgetIndex,
                                          ),
                                          updateCallback: () => setState(() {}),
                                          updateOnChange: true,
                                          child: BudgetBoxCompWidget(
                                            key: Key(
                                              'Keyrs7_${budgetIndex.toString()}',
                                            ),
                                            budgetName: valueOrDefault<String>(
                                              budgetItem.budgetName,
                                              'None',
                                            ),
                                            usedBudget: valueOrDefault<double>(
                                              functions.getUsedBudget(
                                                  FFAppState()
                                                      .transactionList
                                                      .toList(),
                                                  budgetItem.budgetName,
                                                  FFAppState()
                                                      .budgetList[budgetIndex],
                                                  _model.currentDate),
                                              0.0,
                                            ),
                                            totalBudget: valueOrDefault<double>(
                                              budgetItem.budgetAmount,
                                              0.0,
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
