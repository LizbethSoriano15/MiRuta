import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/custom_center_appbar/custom_center_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'payment_method_screen_model.dart';
export 'payment_method_screen_model.dart';

class PaymentMethodScreenWidget extends StatefulWidget {
  const PaymentMethodScreenWidget({super.key});

  static String routeName = 'PaymentMethodScreen';
  static String routePath = '/paymentMethodScreen';

  @override
  State<PaymentMethodScreenWidget> createState() =>
      _PaymentMethodScreenWidgetState();
}

class _PaymentMethodScreenWidgetState extends State<PaymentMethodScreenWidget> {
  late PaymentMethodScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentMethodScreenModel());
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
              wrapWithModel(
                model: _model.customCenterAppbarModel,
                updateCallback: () => safeSetState(() {}),
                child: CustomCenterAppbarWidget(
                  title: 'Puntos de recarga',
                  backIcon: false,
                  addIcon: false,
                  onTapAdd: () async {},
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    16.0,
                    0,
                    16.0,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/oxxos.jpg',
                        width: 200.0,
                        height: 849.42,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        height: 600.0,
                      ),
                    ),
                  ],
                ),
              ),
            ].addToStart(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
