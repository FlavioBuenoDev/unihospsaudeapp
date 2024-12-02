import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cabecalho_paginas/cabecalho_paginas_widget.dart';
import 'novidades_widget.dart' show NovidadesWidget;
import 'package:flutter/material.dart';

class NovidadesModel extends FlutterFlowModel<NovidadesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cabecalhoPaginas component.
  late CabecalhoPaginasModel cabecalhoPaginasModel;

  @override
  void initState(BuildContext context) {
    cabecalhoPaginasModel = createModel(context, () => CabecalhoPaginasModel());
  }

  @override
  void dispose() {
    cabecalhoPaginasModel.dispose();
  }
}
