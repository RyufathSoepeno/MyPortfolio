import '/flutter_flow/theme.dart';
import '/flutter_flow/util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'empty_widget_comp_model.dart';
export 'empty_widget_comp_model.dart';

class EmptyWidgetCompWidget extends StatefulWidget {
  const EmptyWidgetCompWidget({
    super.key,
    String? emptyWidgetLabel,
  }) : emptyWidgetLabel = emptyWidgetLabel ?? 'None';

  final String emptyWidgetLabel;

  @override
  _EmptyWidgetCompWidgetState createState() => _EmptyWidgetCompWidgetState();
}

class _EmptyWidgetCompWidgetState extends State<EmptyWidgetCompWidget> {
  late EmptyWidgetCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyWidgetCompModel());
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
      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.emptyWidgetLabel,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
        ],
      ),
    );
  }
}
