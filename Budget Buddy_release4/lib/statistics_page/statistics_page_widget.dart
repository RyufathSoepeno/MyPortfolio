import '/backend/schema/structs/index.dart';
import '/flutter_flow/charts.dart';
import '/flutter_flow/theme.dart';
import '/flutter_flow/util.dart';
import '/flutter_flow/widgets.dart';
import '/global/empty_widget_comp/empty_widget_comp_widget.dart';
import '/statistics/category_box_component/category_box_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'statistics_page_model.dart';
export 'statistics_page_model.dart';

class StatisticsPageWidget extends StatefulWidget {
  const StatisticsPageWidget({super.key});

  @override
  _StatisticsPageWidgetState createState() => _StatisticsPageWidgetState();
}

class _StatisticsPageWidgetState extends State<StatisticsPageWidget> {
  late StatisticsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatisticsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // updatePageParam
      setState(() {
        _model.currentDate = getCurrentTimestamp;
        _model.type = false;
        _model.statisticCategories = functions
            .getCategoryAmountCopy(
                FFAppState().transactionList.toList(),
                _model.currentDate!,
                functions
                    .expenseOrIncome(
                        _model.type,
                        FFAppState().expenseCategoryList.toList(),
                        FFAppState().incomeCategoryList.toList())
                    ?.toList())!
            .toList()
            .cast<CategoryStruct>();
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
    final statisticsPieChartPieChartColorsList = [
      const Color(0xFF8F46E9),
      const Color(0xFF6F28CB),
      const Color(0xFF2536A4),
      const Color(0xFF4A57C1)
    ];
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text(
            'Statistics Analysis',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 18.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                        // setCurrentDate
                        setState(() {
                          _model.currentDate =
                              functions.newDate(_model.currentDate, false);
                        });
                        // updateCategoryList
                        setState(() {
                          _model.statisticCategories = functions
                              .getCategoryAmountCopy(
                                  FFAppState().transactionList.toList(),
                                  _model.currentDate!,
                                  functions
                                      .expenseOrIncome(
                                          _model.type,
                                          FFAppState()
                                              .expenseCategoryList
                                              .toList(),
                                          FFAppState()
                                              .incomeCategoryList
                                              .toList())
                                      ?.toList())!
                              .toList()
                              .cast<CategoryStruct>();
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
                        // setCurrentDate
                        setState(() {
                          _model.currentDate =
                              functions.newDate(_model.currentDate, true);
                        });
                        // updateCategoryList
                        setState(() {
                          _model.statisticCategories = functions
                              .getCategoryAmountCopy(
                                  FFAppState().transactionList.toList(),
                                  _model.currentDate!,
                                  functions
                                      .expenseOrIncome(
                                          _model.type,
                                          FFAppState()
                                              .expenseCategoryList
                                              .toList(),
                                          FFAppState()
                                              .incomeCategoryList
                                              .toList())
                                      ?.toList())!
                              .toList()
                              .cast<CategoryStruct>();
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
              Align(
                alignment: const AlignmentDirectional(0.00, 1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      0.0, 20.0, 0.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          // setCurrentType
                          setState(() {
                            _model.type = false;
                          });
                          // updateCategoryList
                          setState(() {
                            _model.statisticCategories = functions
                                .getCategoryAmountCopy(
                                    FFAppState().transactionList.toList(),
                                    _model.currentDate!,
                                    functions
                                        .expenseOrIncome(
                                            _model.type,
                                            FFAppState()
                                                .expenseCategoryList
                                                .toList(),
                                            FFAppState()
                                                .incomeCategoryList
                                                .toList())
                                        ?.toList())!
                                .toList()
                                .cast<CategoryStruct>();
                          });
                        },
                        text: 'Expenses',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
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
                      FFButtonWidget(
                        onPressed: () async {
                          // setCurrentType
                          setState(() {
                            _model.type = true;
                          });
                          // updateCategoryList
                          setState(() {
                            _model.statisticCategories = functions
                                .getCategoryAmountCopy(
                                    FFAppState().transactionList.toList(),
                                    _model.currentDate!,
                                    functions
                                        .expenseOrIncome(
                                            _model.type,
                                            FFAppState()
                                                .expenseCategoryList
                                                .toList(),
                                            FFAppState()
                                                .incomeCategoryList
                                                .toList())
                                        ?.toList())!
                                .toList()
                                .cast<CategoryStruct>();
                          });
                        },
                        text: 'Income',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
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
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: SizedBox(
                      width: 354.0,
                      height: 258.0,
                      child: Stack(
                        children: [
                          FlutterFlowPieChart(
                            data: FFPieChartData(
                              values: _model.statisticCategories
                                  .map((e) => e.categoryAmount)
                                  .toList(),
                              colors: statisticsPieChartPieChartColorsList,
                              radius: [104.0],
                            ),
                            donutHoleRadius: 0.0,
                            donutHoleColor: Colors.transparent,
                            sectionLabelType: PieChartSectionLabelType.percent,
                            sectionLabelStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  fontSize: 11.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.00, 1.20),
                            child: FlutterFlowChartLegendWidget(
                              entries: functions
                                  .expenseOrIncome(
                                      _model.type,
                                      FFAppState().expenseCategoryList.toList(),
                                      FFAppState().incomeCategoryList.toList())!
                                  .map((e) => e.categoryName)
                                  .toList()
                                  .asMap()
                                  .entries
                                  .map(
                                    (label) => LegendEntry(
                                      statisticsPieChartPieChartColorsList[label
                                              .key %
                                          statisticsPieChartPieChartColorsList
                                              .length],
                                      label.value,
                                    ),
                                  )
                                  .toList(),
                              width: 93.0,
                              height: 83.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 12.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              textPadding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              borderWidth: 0.0,
                              indicatorSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: ClipRRect(
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 20.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 0.0, 5.0),
                                  child: Text(
                                    'Overview',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                            Builder(
                              builder: (context) {
                                final overviewCategories =
                                    _model.statisticCategories.toList();
                                if (overviewCategories.isEmpty) {
                                  return const Center(
                                    child: EmptyWidgetCompWidget(
                                      emptyWidgetLabel: 'No Categories Found',
                                    ),
                                  );
                                }
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children:
                                      List.generate(overviewCategories.length,
                                          (overviewCategoriesIndex) {
                                    final overviewCategoriesItem =
                                        overviewCategories[
                                            overviewCategoriesIndex];
                                    return wrapWithModel(
                                      model: _model.categoryBoxComponentModels
                                          .getModel(
                                        overviewCategoriesIndex.toString(),
                                        overviewCategoriesIndex,
                                      ),
                                      updateCallback: () => setState(() {}),
                                      child: CategoryBoxComponentWidget(
                                        key: Key(
                                          'Keyrmd_${overviewCategoriesIndex.toString()}',
                                        ),
                                        categoryName: valueOrDefault<String>(
                                          overviewCategoriesItem.categoryName,
                                          'None',
                                        ),
                                        categoryAmount: overviewCategoriesItem
                                            .categoryAmount
                                            .toDouble(),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
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
