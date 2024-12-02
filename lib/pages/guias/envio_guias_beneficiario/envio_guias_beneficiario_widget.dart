import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'envio_guias_beneficiario_model.dart';
export 'envio_guias_beneficiario_model.dart';

class EnvioGuiasBeneficiarioWidget extends StatefulWidget {
  const EnvioGuiasBeneficiarioWidget({
    super.key,
    int? dependente,
  }) : dependente = dependente ?? 00;

  final int dependente;

  @override
  State<EnvioGuiasBeneficiarioWidget> createState() =>
      _EnvioGuiasBeneficiarioWidgetState();
}

class _EnvioGuiasBeneficiarioWidgetState
    extends State<EnvioGuiasBeneficiarioWidget> {
  late EnvioGuiasBeneficiarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnvioGuiasBeneficiarioModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowWebView(
                content: valueOrDefault<String>(
                  'https://acessoseguro.unihospsaude.com.br/portalunihosp/blank_CRM_FORMULARIO_SITE_CLIENTE/blank_CRM_FORMULARIO_SITE_CLIENTE.php?var_matricula=${FFAppState().stategblMatricula}${valueOrDefault<String>(
                    functions.adicionarZeroAEsquerda(widget.dependente),
                    '00',
                  )}',
                  '00',
                ),
                bypass: true,
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
