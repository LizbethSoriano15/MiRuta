import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/custom_center_appbar/custom_center_appbar_widget.dart';
import 'about_screen_widget.dart' show AboutScreenWidget;
import 'package:flutter/material.dart';

class AboutScreenModel extends FlutterFlowModel<AboutScreenWidget> {
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
