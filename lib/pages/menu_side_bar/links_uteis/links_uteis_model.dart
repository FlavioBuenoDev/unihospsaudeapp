import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cabecalho_paginas/cabecalho_paginas_widget.dart';
import 'links_uteis_widget.dart' show LinksUteisWidget;
import 'package:flutter/material.dart';

class LinksUteisModel extends FlutterFlowModel<LinksUteisWidget> {
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
