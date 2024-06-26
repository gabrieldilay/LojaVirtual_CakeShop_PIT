import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_produtos_widget.dart' show EditarProdutosWidget;
import 'package:flutter/material.dart';

class EditarProdutosModel extends FlutterFlowModel<EditarProdutosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloTextController;
  String? Function(BuildContext, String?)? tituloTextControllerValidator;
  // State field(s) for valor widget.
  FocusNode? valorFocusNode;
  TextEditingController? valorTextController;
  String? Function(BuildContext, String?)? valorTextControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloFocusNode?.dispose();
    tituloTextController?.dispose();

    valorFocusNode?.dispose();
    valorTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
