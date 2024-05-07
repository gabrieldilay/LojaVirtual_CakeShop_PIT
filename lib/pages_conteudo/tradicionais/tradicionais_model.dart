import '/flutter_flow/flutter_flow_util.dart';
import 'tradicionais_widget.dart' show TradicionaisWidget;
import 'package:flutter/material.dart';

class TradicionaisModel extends FlutterFlowModel<TradicionaisWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
