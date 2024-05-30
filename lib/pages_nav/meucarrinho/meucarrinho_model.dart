import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meucarrinho_widget.dart' show MeucarrinhoWidget;
import 'package:flutter/material.dart';

class MeucarrinhoModel extends FlutterFlowModel<MeucarrinhoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Pix Mercado Pago)] action in Button widget.
  ApiCallResponse? resultadoPagPix;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
