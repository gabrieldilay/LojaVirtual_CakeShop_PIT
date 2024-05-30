import '/flutter_flow/flutter_flow_util.dart';
import 'caixa_grande_widget.dart' show CaixaGrandeWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CaixaGrandeModel extends FlutterFlowModel<CaixaGrandeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
  }
}
