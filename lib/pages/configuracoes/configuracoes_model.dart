import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cabecalho_paginas/cabecalho_paginas_widget.dart';
import 'configuracoes_widget.dart' show ConfiguracoesWidget;
import 'package:flutter/material.dart';

class ConfiguracoesModel extends FlutterFlowModel<ConfiguracoesWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ApiConsultaConfiguracao)] action in configuracoes widget.
  ApiCallResponse? apiResultNotificacao;
  // Stores action output result for [Backend Call - API (ApiAtualizaConfiguracao)] action in configuracoes widget.
  ApiCallResponse? apiResultInsert;
  // Model for cabecalhoPaginas component.
  late CabecalhoPaginasModel cabecalhoPaginasModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (ApiAtualizaConfiguracao)] action in Switch widget.
  ApiCallResponse? apiResultAtualizaConf;
  // Stores action output result for [Backend Call - API (ApiAtualizaConfiguracao)] action in Switch widget.
  ApiCallResponse? apiResultAtualizaConfOff;

  @override
  void initState(BuildContext context) {
    cabecalhoPaginasModel = createModel(context, () => CabecalhoPaginasModel());
  }

  @override
  void dispose() {
    cabecalhoPaginasModel.dispose();
  }
}
