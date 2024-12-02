import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'page_login_copy_widget.dart' show PageLoginCopyWidget;
import 'package:flutter/material.dart';

class PageLoginCopyModel extends FlutterFlowModel<PageLoginCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for cmpMatricula widget.
  FocusNode? cmpMatriculaFocusNode;
  TextEditingController? cmpMatriculaTextController;
  String? Function(BuildContext, String?)? cmpMatriculaTextControllerValidator;
  // State field(s) for cmpDependente widget.
  FocusNode? cmpDependenteFocusNode;
  TextEditingController? cmpDependenteTextController;
  String? Function(BuildContext, String?)? cmpDependenteTextControllerValidator;
  // State field(s) for cmpCPF widget.
  FocusNode? cmpCPFFocusNode;
  TextEditingController? cmpCPFTextController;
  String? Function(BuildContext, String?)? cmpCPFTextControllerValidator;
  // State field(s) for cmpSenha widget.
  FocusNode? cmpSenhaFocusNode;
  TextEditingController? cmpSenhaTextController;
  late bool cmpSenhaVisibility;
  String? Function(BuildContext, String?)? cmpSenhaTextControllerValidator;
  String? _cmpSenhaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (ApiBlankLogin)] action in btnEntrarMatricula widget.
  ApiCallResponse? apiResultLoginMatricula;
  // Stores action output result for [Backend Call - API (ApiBlankLogin)] action in btnEntrarCpf widget.
  ApiCallResponse? apiResultLoginCpf;

  @override
  void initState(BuildContext context) {
    cmpSenhaVisibility = false;
    cmpSenhaTextControllerValidator = _cmpSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    cmpMatriculaFocusNode?.dispose();
    cmpMatriculaTextController?.dispose();

    cmpDependenteFocusNode?.dispose();
    cmpDependenteTextController?.dispose();

    cmpCPFFocusNode?.dispose();
    cmpCPFTextController?.dispose();

    cmpSenhaFocusNode?.dispose();
    cmpSenhaTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
