import '/flutter_flow/flutter_flow_util.dart';
import 'pilih_waktu_widget.dart' show PilihWaktuWidget;
import 'package:flutter/material.dart';

class PilihWaktuModel extends FlutterFlowModel<PilihWaktuWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PICKHOUR widget.
  FocusNode? pickhourFocusNode;
  TextEditingController? pickhourTextController;
  String? Function(BuildContext, String?)? pickhourTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pickhourFocusNode?.dispose();
    pickhourTextController?.dispose();
  }
}
