import '/flutter_flow/icon_button.dart';
import '/flutter_flow/theme.dart';
import '/flutter_flow/util.dart';
import '/global/empty_widget_comp/empty_widget_comp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'expense_configuration_page_model.dart';
export 'expense_configuration_page_model.dart';

class ExpenseConfigurationPageWidget extends StatefulWidget {
  const ExpenseConfigurationPageWidget({super.key});

  @override
  _ExpenseConfigurationPageWidgetState createState() =>
      _ExpenseConfigurationPageWidgetState();
}

class _ExpenseConfigurationPageWidgetState
    extends State<ExpenseConfigurationPageWidget> {
  late ExpenseConfigurationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExpenseConfigurationPageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              // navigateBack
              context.pop();
            },
          ),
          title: Text(
            'Configure Expense Categories',
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Expense Categories',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      Builder(
                        builder: (context) {
                          final expenseCategoryList =
                              FFAppState().expenseCategoryList.toList();
                          if (expenseCategoryList.isEmpty) {
                            return const EmptyWidgetCompWidget(
                              emptyWidgetLabel: 'No Expense Category Found.',
                            );
                          }
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children:
                                  List.generate(expenseCategoryList.length,
                                      (expenseCategoryListIndex) {
                                final expenseCategoryListItem =
                                    expenseCategoryList[
                                        expenseCategoryListIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Slidable(
                                    endActionPane: ActionPane(
                                      motion: const ScrollMotion(),
                                      extentRatio: 0.25,
                                      children: [
                                        SlidableAction(
                                          label: 'Delete',
                                          backgroundColor:
                                              const Color(0xFFB20000),
                                          icon: Icons.delete,
                                          onPressed: (_) async {
                                            // removeExpenseItem
                                            setState(() {
                                              FFAppState()
                                                  .removeAtIndexFromExpenseCategoryList(
                                                      expenseCategoryListIndex);
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    child: ListTile(
                                      title: Text(
                                        expenseCategoryListItem.categoryName,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLargeFamily,
                                              fontSize: 16.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeFamily),
                                            ),
                                      ),
                                      tileColor: Colors.black,
                                      dense: false,
                                    ),
                                  ),
                                );
                              }),
                            ),
                          );
                        },
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
