import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dados_beneficiarios_carteirinha_widget.dart'
    show DadosBeneficiariosCarteirinhaWidget;
import 'package:flutter/material.dart';

class DadosBeneficiariosCarteirinhaModel
    extends FlutterFlowModel<DadosBeneficiariosCarteirinhaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DtDadosBeneficiariosStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
