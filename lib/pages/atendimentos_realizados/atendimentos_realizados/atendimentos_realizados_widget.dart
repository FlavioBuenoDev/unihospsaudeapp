import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'atendimentos_realizados_model.dart';
export 'atendimentos_realizados_model.dart';

class AtendimentosRealizadosWidget extends StatefulWidget {
  const AtendimentosRealizadosWidget({
    super.key,
    this.gblMatricula,
    this.gblDependente,
    this.gblDivulgacao,
    required this.gblNumeroAns,
  });

  final String? gblMatricula;
  final String? gblDependente;
  final String? gblDivulgacao;
  final int? gblNumeroAns;

  @override
  State<AtendimentosRealizadosWidget> createState() =>
      _AtendimentosRealizadosWidgetState();
}

class _AtendimentosRealizadosWidgetState
    extends State<AtendimentosRealizadosWidget> {
  late AtendimentosRealizadosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AtendimentosRealizadosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                content:
                    'https://acessoseguro.unihospsaude.com.br/app/controlAtendimentoRealizado/controlAtendimentoRealizado.php?gblMatricula=${widget.gblMatricula}&gblDependente=${widget.gblDependente}&gblDivulgacao=${widget.gblDivulgacao}&gblNumeroAns=${widget.gblNumeroAns?.toString()}',
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
