import '/flutter_flow/flutter_flow_util.dart';
import 'dados_acesso_widget.dart' show DadosAcessoWidget;
import 'package:flutter/material.dart';

class DadosAcessoModel extends FlutterFlowModel<DadosAcessoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  String? _txtEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'E-mail invalido';
    }
    return null;
  }

  // State field(s) for txtSenha widget.
  FocusNode? txtSenhaFocusNode;
  TextEditingController? txtSenhaTextController;
  late bool txtSenhaVisibility;
  String? Function(BuildContext, String?)? txtSenhaTextControllerValidator;
  String? _txtSenhaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtConfSenha widget.
  FocusNode? txtConfSenhaFocusNode;
  TextEditingController? txtConfSenhaTextController;
  late bool txtConfSenhaVisibility;
  String? Function(BuildContext, String?)? txtConfSenhaTextControllerValidator;
  String? _txtConfSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtEmailTextControllerValidator = _txtEmailTextControllerValidator;
    txtSenhaVisibility = false;
    txtSenhaTextControllerValidator = _txtSenhaTextControllerValidator;
    txtConfSenhaVisibility = false;
    txtConfSenhaTextControllerValidator = _txtConfSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtSenhaFocusNode?.dispose();
    txtSenhaTextController?.dispose();

    txtConfSenhaFocusNode?.dispose();
    txtConfSenhaTextController?.dispose();
  }
}
