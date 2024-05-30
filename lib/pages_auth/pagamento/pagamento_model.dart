import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey8 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for number_cartao widget.
  FocusNode? numberCartaoFocusNode;
  TextEditingController? numberCartaoTextController;
  String? Function(BuildContext, String?)? numberCartaoTextControllerValidator;
  // State field(s) for mes_card widget.
  FocusNode? mesCardFocusNode;
  TextEditingController? mesCardTextController;
  final mesCardMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? mesCardTextControllerValidator;
  // State field(s) for ano_card widget.
  FocusNode? anoCardFocusNode;
  TextEditingController? anoCardTextController;
  final anoCardMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? anoCardTextControllerValidator;
  // State field(s) for cvv_card widget.
  FocusNode? cvvCardFocusNode;
  TextEditingController? cvvCardTextController;
  final cvvCardMask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? cvvCardTextControllerValidator;
  // State field(s) for dd widget.
  FocusNode? ddFocusNode;
  TextEditingController? ddTextController;
  String? Function(BuildContext, String?)? ddTextControllerValidator;
  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularTextController;
  String? Function(BuildContext, String?)? celularTextControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (Pag Via Cartao PAGBANK)] action in Button widget.
  ApiCallResponse? resultadoCartao;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    numberCartaoFocusNode?.dispose();
    numberCartaoTextController?.dispose();

    mesCardFocusNode?.dispose();
    mesCardTextController?.dispose();

    anoCardFocusNode?.dispose();
    anoCardTextController?.dispose();

    cvvCardFocusNode?.dispose();
    cvvCardTextController?.dispose();

    ddFocusNode?.dispose();
    ddTextController?.dispose();

    celularFocusNode?.dispose();
    celularTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
