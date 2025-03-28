import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/custom_center_appbar/custom_center_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'security_screen_copy_model.dart';
export 'security_screen_copy_model.dart';

class SecurityScreenCopyWidget extends StatefulWidget {
  const SecurityScreenCopyWidget({super.key});

  static String routeName = 'SecurityScreenCopy';
  static String routePath = '/securityScreenCopy';

  @override
  State<SecurityScreenCopyWidget> createState() =>
      _SecurityScreenCopyWidgetState();
}

class _SecurityScreenCopyWidgetState extends State<SecurityScreenCopyWidget> {
  late SecurityScreenCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecurityScreenCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.customCenterAppbarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CustomCenterAppbarWidget(
                      title: 'Saldo',
                      backIcon: false,
                      addIcon: false,
                      onTapAdd: () async {},
                    ),
                  ),
                ].addToStart(SizedBox(height: 24.0)),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/2222.jpg',
                    width: 351.1,
                    height: 199.2,
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, 0.0),
                  ),
                ),
              ),
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    '\$70',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      color: FlutterFlowTheme.of(context).info,
                      fontWeight: FontWeight.normal,
                      fontSize: 60.0,
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
