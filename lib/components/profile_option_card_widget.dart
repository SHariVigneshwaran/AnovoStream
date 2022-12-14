import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileOptionCardWidget extends StatefulWidget {
  const ProfileOptionCardWidget({
    Key? key,
    this.icon,
    this.title,
    this.trilingText,
  }) : super(key: key);

  final Widget? icon;
  final String? title;
  final String? trilingText;

  @override
  _ProfileOptionCardWidgetState createState() =>
      _ProfileOptionCardWidgetState();
}

class _ProfileOptionCardWidgetState extends State<ProfileOptionCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            child: widget.icon!,
          ),
          Expanded(
            child: Text(
              widget.title!,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: Text(
              widget.trilingText!,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
