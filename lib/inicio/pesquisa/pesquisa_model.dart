import '/flutter_flow/flutter_flow_util.dart';
import 'pesquisa_widget.dart' show PesquisaWidget;
import 'package:flutter/material.dart';

class PesquisaModel extends FlutterFlowModel<PesquisaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PESQUISA widget.
  final pesquisaKey = GlobalKey();
  FocusNode? pesquisaFocusNode;
  TextEditingController? pesquisaTextController;
  String? pesquisaSelectedOption;
  String? Function(BuildContext, String?)? pesquisaTextControllerValidator;
  List<String> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    pesquisaFocusNode?.dispose();
  }
}
