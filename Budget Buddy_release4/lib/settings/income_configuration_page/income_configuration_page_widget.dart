import '/flutter_flow/icon_button.dart';
import '/flutter_flow/theme.dart';
import '/flutter_flow/util.dart';
import '/global/empty_widget_comp/empty_widget_comp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'income_configuration_page_model.dart';
export 'income_configuration_page_model.dart';

class IncomeConfigurationPageWidget extends StatefulWidget {
  const IncomeConfigurationPageWidget({super.key});

  @override
  _IncomeConfigurationPageWidgetState createState() =>
      _IncomeConfigurationPageWidgetState();
}

class _IncomeConfigurationPageWidgetState
    extends State<IncomeConfigurationPageWidget> {
  late IncomeConfigurationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IncomeConfigurationPageModel());
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
            'Configure Income Categories',
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
                      const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                              'Income Categories',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      Builder(
                        builder: (context) {
                          final incomeCategoryList =
                              FFAppState().incomeCategoryList.toList();
                          if (incomeCategoryList.isEmpty) {
                            return const EmptyWidgetCompWidget(
                              emptyWidgetLabel: 'No Expense Category Found.',
                            );
                          }
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(incomeCategoryList.length,
                                  (incomeCategoryListIndex) {
                                final incomeCategoryListItem =
                                    incomeCategoryList[incomeCategoryListIndex];
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
                                            // removeIncomeItem
                                            setState(() {
                                              FFAppState()
                                                  .removeAtIndexFromIncomeCategoryList(
                                                      incomeCategoryListIndex);
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    child: ListTile(
                                      title: Text(
                                        incomeCategoryListItem.categoryName,
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
