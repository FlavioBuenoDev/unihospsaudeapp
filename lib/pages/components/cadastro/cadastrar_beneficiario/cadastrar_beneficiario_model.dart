import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastrar_beneficiario_widget.dart' show CadastrarBeneficiarioWidget;
import 'package:flutter/material.dart';

class CadastrarBeneficiarioModel
    extends FlutterFlowModel<CadastrarBeneficiarioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtMatricula widget.
  FocusNode? txtMatriculaFocusNode;
  TextEditingController? txtMatriculaTextController;
  String? Function(BuildContext, String?)? txtMatriculaTextControllerValidator;
  String? _txtMatriculaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtDependente widget.
  FocusNode? txtDependenteFocusNode;
  TextEditingController? txtDependenteTextController;
  String? Function(BuildContext, String?)? txtDependenteTextControllerValidator;
  String? _txtDependenteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (ApiValidaMatriculaBeneficiario)] action in txtDependente widget.
  ApiCallResponse? apiResultValidaMatricula;
  // State field(s) for txtNomeCompl widget.
  FocusNode? txtNomeComplFocusNode;
  TextEditingController? txtNomeComplTextController;
  String? Function(BuildContext, String?)? txtNomeComplTextControllerValidator;
  // State field(s) for txtNomeMae widget.
  FocusNode? txtNomeMaeFocusNode;
  TextEditingController? txtNomeMaeTextController;
  String? Function(BuildContext, String?)? txtNomeMaeTextControllerValidator;
  // State field(s) for txtCpf widget.
  FocusNode? txtCpfFocusNode;
  TextEditingController? txtCpfTextController;
  String? Function(BuildContext, String?)? txtCpfTextControllerValidator;
  String? _txtCpfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtTel widget.
  FocusNode? txtTelFocusNode;
  TextEditingController? txtTelTextController;
  String? Function(BuildContext, String?)? txtTelTextControllerValidator;
  String? _txtTelTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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

  // Stores action output result for [Custom Action - validarCPF] action in Button widget.
  bool? resultCpf;
  // Stores action output result for [Backend Call - API (ApiCadastrarBeneficiario)] action in Button widget.
  ApiCallResponse? apiResulCadastrarBenef;

  @override
  void initState(BuildContext context) {
    txtMatriculaTextControllerValidator = _txtMatriculaTextControllerValidator;
    txtDependenteTextControllerValidator =
        _txtDependenteTextControllerValidator;
    txtCpfTextControllerValidator = _txtCpfTextControllerValidator;
    txtTelTextControllerValidator = _txtTelTextControllerValidator;
    txtEmailTextControllerValidator = _txtEmailTextControllerValidator;
    txtSenhaVisibility = false;
    txtSenhaTextControllerValidator = _txtSenhaTextControllerValidator;
    txtConfSenhaVisibility = false;
    txtConfSenhaTextControllerValidator = _txtConfSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    txtMatriculaFocusNode?.dispose();
    txtMatriculaTextController?.dispose();

    txtDependenteFocusNode?.dispose();
    txtDependenteTextController?.dispose();

    txtNomeComplFocusNode?.dispose();
    txtNomeComplTextController?.dispose();

    txtNomeMaeFocusNode?.dispose();
    txtNomeMaeTextController?.dispose();

    txtCpfFocusNode?.dispose();
    txtCpfTextController?.dispose();

    txtTelFocusNode?.dispose();
    txtTelTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtSenhaFocusNode?.dispose();
    txtSenhaTextController?.dispose();

    txtConfSenhaFocusNode?.dispose();
    txtConfSenhaTextController?.dispose();
  }
}
