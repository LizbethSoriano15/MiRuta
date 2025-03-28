import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/custom_center_appbar/custom_center_appbar_widget.dart';
import 'feedback_screen_widget.dart' show FeedbackScreenWidget;
import 'package:flutter/material.dart';

class FeedbackScreenModel extends FlutterFlowModel<FeedbackScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for CustomCenterAppbar component.
  late CustomCenterAppbarModel customCenterAppbarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter feedback';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    customCenterAppbarModel =
        createModel(context, () => CustomCenterAppbarModel());
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    customCenterAppbarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
