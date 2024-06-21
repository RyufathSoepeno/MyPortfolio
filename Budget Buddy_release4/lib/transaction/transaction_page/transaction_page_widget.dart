import '/flutter_flow/calendar.dart';
import '/flutter_flow/theme.dart';
import '/flutter_flow/util.dart';
import '/transaction/transaction_list_comp/transaction_list_comp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'transaction_page_model.dart';
export 'transaction_page_model.dart';

class TransactionPageWidget extends StatefulWidget {
  const TransactionPageWidget({super.key});

  @override
  _TransactionPageWidgetState createState() => _TransactionPageWidgetState();
}

class _TransactionPageWidgetState extends State<TransactionPageWidget> {
  late TransactionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // updateToCurrentTime
      setState(() {
        FFAppState().selectedDate = getCurrentTimestamp;
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
            'Transactions',
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
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: FlutterFlowCalendar(
                  color: FlutterFlowTheme.of(context).primary,
                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                  weekFormat: true,
                  weekStartsMonday: true,
                  initialDate: dateTimeFromSecondsSinceEpoch(
                      getCurrentTimestamp.secondsSinceEpoch),
                  rowHeight: 48.0,
                  onChange: (DateTimeRange? newSelectedDate) async {
                    _model.transactionListCalendarSelectedDay = newSelectedDate;
                    // updateToSelectedDate
                    setState(() {
                      FFAppState().selectedDate =
                          dateTimeFromSecondsSinceEpoch(valueOrDefault<int>(
                        _model.transactionListCalendarSelectedDay?.start
                            .secondsSinceEpoch,
                        0,
                      ));
                    });
                    setState(() {});
                  },
                  titleStyle: FlutterFlowTheme.of(context)
                      .headlineSmall
                      .override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineSmallFamily,
                        fontSize: 18.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineSmallFamily),
                      ),
                  dayOfWeekStyle:
                      FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            fontSize: 14.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelLargeFamily),
                          ),
                  dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                  selectedDateStyle:
                      FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            fontSize: 18.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                  inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium,
                ),
              ),
              Flexible(
                child: ClipRRect(
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: wrapWithModel(
                      model: _model.transactionListCompModel,
                      updateCallback: () => setState(() {}),
                      updateOnChange: true,
                      child: TransactionListCompWidget(
                        selectedDate: FFAppState().selectedDate!,
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
