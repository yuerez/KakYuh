import '/assets/custom_navbar/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_home_widget.dart' show MenuHomeWidget;
import 'package:flutter/material.dart';

class MenuHomeModel extends FlutterFlowModel<MenuHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel;

  @override
  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    customNavbarModel.dispose();
  }
}
