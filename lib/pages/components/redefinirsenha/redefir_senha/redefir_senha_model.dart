import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'redefir_senha_widget.dart' show RedefirSenhaWidget;
import 'package:flutter/material.dart';

class RedefirSenhaModel extends FlutterFlowModel<RedefirSenhaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - validarCPF] action in TextField widget.
  bool? returnCpf;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (blankAppValidaRecuperacaoSenha)] action in btnrecuperarsenha widget.
  ApiCallResponse? apiResultRecuperaSenha;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
