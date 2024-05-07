import '/flutter_flow/flutter_flow_util.dart';
import 'ordens_pedidos_widget.dart' show OrdensPedidosWidget;
import 'package:flutter/material.dart';

class OrdensPedidosModel extends FlutterFlowModel<OrdensPedidosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
