import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'rede_credenciada_model.dart';
export 'rede_credenciada_model.dart';

class RedeCredenciadaWidget extends StatefulWidget {
  const RedeCredenciadaWidget({
    super.key,
    required this.varMatricula,
    required this.gblMatricula,
    required this.gblDependente,
    required this.gblDivulgacao,
  });

  final int? varMatricula;
  final int? gblMatricula;
  final int? gblDependente;
  final String? gblDivulgacao;

  @override
  State<RedeCredenciadaWidget> createState() => _RedeCredenciadaWidgetState();
}

class _RedeCredenciadaWidgetState extends State<RedeCredenciadaWidget> {
  late RedeCredenciadaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RedeCredenciadaModel());
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowWebView(
                  content:
                      'https://acessoseguro.unihospsaude.com.br/portalunihosp/controlRedeCredenciadaInterna/controlRedeCredenciadaInterna.php?var_matricula=${widget.varMatricula?.toString()}&gblMatricula=${widget.gblMatricula?.toString()}&gblDependente=${widget.gblDependente?.toString()}&gblDivulgacao=${widget.gblDivulgacao}&gblNumeroAns=482332190',
                  bypass: true,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  verticalScroll: true,
                  horizontalScroll: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
