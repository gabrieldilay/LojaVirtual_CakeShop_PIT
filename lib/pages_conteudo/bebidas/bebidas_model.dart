import '/flutter_flow/flutter_flow_util.dart';
import 'bebidas_widget.dart' show BebidasWidget;
import 'package:flutter/material.dart';

class BebidasModel extends FlutterFlowModel<BebidasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
