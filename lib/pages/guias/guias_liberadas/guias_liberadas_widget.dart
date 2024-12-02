import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'guias_liberadas_model.dart';
export 'guias_liberadas_model.dart';

class GuiasLiberadasWidget extends StatefulWidget {
  const GuiasLiberadasWidget({
    super.key,
    this.gblMatricula,
    this.gblDependente,
    this.gblDivulgacao,
  });

  final String? gblMatricula;
  final String? gblDependente;
  final String? gblDivulgacao;

  @override
  State<GuiasLiberadasWidget> createState() => _GuiasLiberadasWidgetState();
}

class _GuiasLiberadasWidgetState extends State<GuiasLiberadasWidget> {
  late GuiasLiberadasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuiasLiberadasModel());
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
                    'https://acessoseguro.unihospsaude.com.br/app/controlGuiaLiberada/controlGuiaLiberada.php?gblMatricula=${widget.gblMatricula}&gblDependente=${widget.gblDependente}&gblDivulgacao=${widget.gblDivulgacao}&gblNumeroAns=482332190',
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
