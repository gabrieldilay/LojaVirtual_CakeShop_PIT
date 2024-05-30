import '/flutter_flow/flutter_flow_util.dart';
import 'detalhes_produtos_widget.dart' show DetalhesProdutosWidget;
import 'package:flutter/material.dart';

class DetalhesProdutosModel extends FlutterFlowModel<DetalhesProdutosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
