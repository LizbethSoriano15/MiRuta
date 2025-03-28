import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/custom_center_appbar/custom_center_appbar_widget.dart';
import 'payment_method_screen_widget.dart' show PaymentMethodScreenWidget;
import 'package:flutter/material.dart';

class PaymentMethodScreenModel
    extends FlutterFlowModel<PaymentMethodScreenWidget> {
  ///  Local state fields for this page.

  int? selectedList = 0;

  ///  State fields for stateful widgets in this page.

  // Model for CustomCenterAppbar component.
  late CustomCenterAppbarModel customCenterAppbarModel;

  @override
  void initState(BuildContext context) {
    customCenterAppbarModel =
        createModel(context, () => CustomCenterAppbarModel());
  }

  @override
  void dispose() {
    customCenterAppbarModel.dispose();
  }
}
