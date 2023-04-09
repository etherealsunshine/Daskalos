import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'verification_page_model.dart';
export 'verification_page_model.dart';

class VerificationPageWidget extends StatefulWidget {
  const VerificationPageWidget({Key? key}) : super(key: key);

  @override
  _VerificationPageWidgetState createState() => _VerificationPageWidgetState();
}

class _VerificationPageWidgetState extends State<VerificationPageWidget> {
  late VerificationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerificationPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        appBar: AppBar(
          backgroundColor: Color(0xFFB1B1B1),
          automaticallyImplyLeading: false,
          title: Text(
            'Enter Pin Code Below',
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Confirm your Code',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(44.0, 8.0, 44.0, 0.0),
                    child: Text(
                      'This code helps keep your account safe and secure.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 6,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      enableActiveFill: false,
                      autoFocus: true,
                      showCursor: true,
                      cursorColor: FlutterFlowTheme.of(context).primary,
                      obscureText: false,
                      hintCharacter: '-',
                      pinTheme: PinTheme(
                        fieldHeight: 60.0,
                        fieldWidth: 60.0,
                        borderWidth: 2.0,
                        borderRadius: BorderRadius.circular(12.0),
                        shape: PinCodeFieldShape.box,
                        activeColor: FlutterFlowTheme.of(context).primary,
                        inactiveColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        selectedColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        activeFillColor: FlutterFlowTheme.of(context).primary,
                        inactiveFillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        selectedFillColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      controller: _model.pinCodeController,
                      onChanged: (_) => {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 44.0),
              child: FFButtonWidget(
                onPressed: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  final smsCodeVal = _model.pinCodeController!.text;
                  if (smsCodeVal == null || smsCodeVal.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Enter SMS verification code.'),
                      ),
                    );
                    return;
                  }
                  final phoneVerifiedUser = await verifySmsCode(
                    context: context,
                    smsCode: smsCodeVal,
                  );
                  if (phoneVerifiedUser == null) {
                    return;
                  }

                  if (Navigator.of(context).canPop()) {
                    context.pop();
                  }
                  context.pushNamedAuth(
                    'ProfileIntroDataPage',
                    mounted,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                      ),
                    },
                  );
                },
                text: 'Confirm & Continue',
                options: FFButtonOptions(
                  width: 270.0,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryText,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                  elevation: 2.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
