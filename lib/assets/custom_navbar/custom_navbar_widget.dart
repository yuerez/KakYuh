import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'custom_navbar_model.dart';
export 'custom_navbar_model.dart';

class CustomNavbarWidget extends StatefulWidget {
  /// HOME
  const CustomNavbarWidget({
    super.key,
    String? pageName,
  }) : pageName = pageName ?? 'HomePage';

  final String pageName;

  @override
  State<CustomNavbarWidget> createState() => _CustomNavbarWidgetState();
}

class _CustomNavbarWidgetState extends State<CustomNavbarWidget> {
  late CustomNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 431.0,
      height: 100.0,
      decoration: const BoxDecoration(),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 1.0),
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Container(
                width: 399.0,
                height: 80.0,
                decoration: const BoxDecoration(
                  color: Color(0x0014181B),
                ),
                child: Container(
                  width: 162.0,
                  height: 133.0,
                  decoration: const BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Stack(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Subtract.png',
                          height: 109.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 30.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  fillColor: const Color(0x004B39EF),
                                  icon: Icon(
                                    Icons.home,
                                    color: valueOrDefault<Color>(
                                      widget.pageName == 'Home'
                                          ? const Color(0xFF489772)
                                          : const Color(0xFF9BCAB4),
                                      const Color(0xFF9BCAB4),
                                    ),
                                    size: 40.0,
                                  ),
                                  onPressed: () async {
                                    context.goNamed('MenuHome');
                                  },
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  fillColor: const Color(0x004B39EF),
                                  icon: Icon(
                                    Icons.person_rounded,
                                    color: valueOrDefault<Color>(
                                      widget.pageName == 'Home'
                                          ? const Color(0xFF489772)
                                          : const Color(0xFF9BCAB4),
                                      const Color(0xFF9BCAB4),
                                    ),
                                    size: 40.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('profile');
                                  },
                                ),
                              ),
                            ]
                                .divide(const SizedBox(width: 176.0))
                                .addToStart(const SizedBox(width: 24.0))
                                .addToEnd(const SizedBox(width: 2.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                buttonSize: 60.0,
                fillColor: Colors.white,
                icon: const Icon(
                  Icons.qr_code_scanner_rounded,
                  color: Color(0xFF489772),
                  size: 40.0,
                ),
                onPressed: () async {
                  _model.scan = await FlutterBarcodeScanner.scanBarcode(
                    '#C62828', // scanning line color
                    'Cancel', // cancel button text
                    true, // whether to show the flash icon
                    ScanMode.QR,
                  );

                  context.pushNamed('formPemesanan');

                  safeSetState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
