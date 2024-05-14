import '/flutter_flow/flutter_flow_util.dart';
import 'especiais_widget.dart' show EspeciaisWidget;
import 'package:flutter/material.dart';

class EspeciaisModel extends FlutterFlowModel<EspeciaisWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
