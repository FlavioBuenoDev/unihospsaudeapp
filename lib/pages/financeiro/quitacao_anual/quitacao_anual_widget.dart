import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'quitacao_anual_model.dart';
export 'quitacao_anual_model.dart';

class QuitacaoAnualWidget extends StatefulWidget {
  const QuitacaoAnualWidget({
    super.key,
    this.gblMatricula,
    required this.gblAnoQuitacaoAnual,
  });

  final int? gblMatricula;
  final String? gblAnoQuitacaoAnual;

  @override
  State<QuitacaoAnualWidget> createState() => _QuitacaoAnualWidgetState();
}

class _QuitacaoAnualWidgetState extends State<QuitacaoAnualWidget> {
  late QuitacaoAnualModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuitacaoAnualModel());
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
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowPdfViewer(
                    networkPath:
                        'https://acessoseguro.unihospsaude.com.br/app/blankGeraQuitacaoAnual/blankGeraQuitacaoAnual.php?gblMatricula=${widget.gblMatricula?.toString()}&gblAnoQuitacaoAnual=${widget.gblAnoQuitacaoAnual}',
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    horizontalScroll: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
