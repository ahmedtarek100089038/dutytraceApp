import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for staffId widget.
  FocusNode? staffIdFocusNode;
  TextEditingController? staffIdController;
  String? Function(BuildContext, String?)? staffIdControllerValidator;
  // Stores action output result for [Backend Call - API (Login Auth)] action in Button widget.
  ApiCallResponse? loginResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    staffIdFocusNode?.dispose();
    staffIdController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
