import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailControl widget.
  FocusNode? emailControlFocusNode;
  TextEditingController? emailControlTextController;
  String? Function(BuildContext, String?)? emailControlTextControllerValidator;
  // State field(s) for PasswordControl widget.
  FocusNode? passwordControlFocusNode;
  TextEditingController? passwordControlTextController;
  late bool passwordControlVisibility;
  String? Function(BuildContext, String?)?
      passwordControlTextControllerValidator;
  // State field(s) for ConfirmPasswordControl widget.
  FocusNode? confirmPasswordControlFocusNode;
  TextEditingController? confirmPasswordControlTextController;
  late bool confirmPasswordControlVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordControlTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordControlVisibility = false;
    confirmPasswordControlVisibility = false;
  }

  @override
  void dispose() {
    emailControlFocusNode?.dispose();
    emailControlTextController?.dispose();

    passwordControlFocusNode?.dispose();
    passwordControlTextController?.dispose();

    confirmPasswordControlFocusNode?.dispose();
    confirmPasswordControlTextController?.dispose();
  }
}
