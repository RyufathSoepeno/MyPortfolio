import '/flutter_flow/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'empty_initial_screen_model.dart';
export 'empty_initial_screen_model.dart';

class EmptyInitialScreenWidget extends StatefulWidget {
  const EmptyInitialScreenWidget({super.key});

  @override
  _EmptyInitialScreenWidgetState createState() =>
      _EmptyInitialScreenWidgetState();
}

class _EmptyInitialScreenWidgetState extends State<EmptyInitialScreenWidget> {
  late EmptyInitialScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyInitialScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().biometric == true) {
        // navigateToVerifPg

        context.goNamed(
          'VerificationPage',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      } else {
        // navigateToHomePg

        context.goNamed(
          'HomePage',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      }

      // setCurrentDate
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
      ),
    );
  }
}
