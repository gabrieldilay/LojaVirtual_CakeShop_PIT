import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'carrinho_widget.dart' show CarrinhoWidget;
import 'package:flutter/material.dart';

class CarrinhoModel extends FlutterFlowModel<CarrinhoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode1;
  TextEditingController? nomeTextController1;
  String? Function(BuildContext, String?)? nomeTextController1Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode2;
  TextEditingController? nomeTextController2;
  String? Function(BuildContext, String?)? nomeTextController2Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode3;
  TextEditingController? nomeTextController3;
  String? Function(BuildContext, String?)? nomeTextController3Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode4;
  TextEditingController? nomeTextController4;
  String? Function(BuildContext, String?)? nomeTextController4Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode5;
  TextEditingController? nomeTextController5;
  String? Function(BuildContext, String?)? nomeTextController5Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode6;
  TextEditingController? nomeTextController6;
  String? Function(BuildContext, String?)? nomeTextController6Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeFocusNode1?.dispose();
    nomeTextController1?.dispose();

    nomeFocusNode2?.dispose();
    nomeTextController2?.dispose();

    nomeFocusNode3?.dispose();
    nomeTextController3?.dispose();

    nomeFocusNode4?.dispose();
    nomeTextController4?.dispose();

    nomeFocusNode5?.dispose();
    nomeTextController5?.dispose();

    nomeFocusNode6?.dispose();
    nomeTextController6?.dispose();
  }
}
