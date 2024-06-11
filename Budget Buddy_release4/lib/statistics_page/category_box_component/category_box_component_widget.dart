import '/flutter_flow/theme.dart';
import '/flutter_flow/util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_box_component_model.dart';
export 'category_box_component_model.dart';

class CategoryBoxComponentWidget extends StatefulWidget {
  const CategoryBoxComponentWidget({
    super.key,
    required this.categoryName,
    required this.categoryAmount,
  });

  final String? categoryName;
  final double? categoryAmount;

  @override
  _CategoryBoxComponentWidgetState createState() =>
      _CategoryBoxComponentWidgetState();
}

class _CategoryBoxComponentWidgetState
    extends State<CategoryBoxComponentWidget> {
  late CategoryBoxComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryBoxComponentModel());
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
        height: 38.0,
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
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 10.0),
              child: Text(
                valueOrDefault<String>(
                  widget.categoryName,
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
                padding: const EdgeInsetsDirectional.fromSTEB(
                    15.0, 10.0, 15.0, 10.0),
                child: Text(
                  valueOrDefault<String>(
                    formatNumber(
                      widget.categoryAmount,
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
                        fontSize: 13.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleMediumFamily),
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
