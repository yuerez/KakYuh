import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailControl widget.
  FocusNode? emailControlFocusNode;
  TextEditingController? emailControlTextController;
  String? Function(BuildContext, String?)? emailControlTextControllerValidator;
  // State field(s) for PasswordControls widget.
  FocusNode? passwordControlsFocusNode;
  TextEditingController? passwordControlsTextController;
  late bool passwordControlsVisibility;
  String? Function(BuildContext, String?)?
      passwordControlsTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordControlsVisibility = false;
  }

  @override
  void dispose() {
    emailControlFocusNode?.dispose();
    emailControlTextController?.dispose();

    passwordControlsFocusNode?.dispose();
    passwordControlsTextController?.dispose();
  }
}
