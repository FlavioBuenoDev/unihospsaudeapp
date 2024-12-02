import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'imposto_renda_model.dart';
export 'imposto_renda_model.dart';

class ImpostoRendaWidget extends StatefulWidget {
  const ImpostoRendaWidget({
    super.key,
    this.gblMatricula,
    required this.gblAnoImpostoDeRenda,
  });

  final int? gblMatricula;
  final String? gblAnoImpostoDeRenda;

  @override
  State<ImpostoRendaWidget> createState() => _ImpostoRendaWidgetState();
}

class _ImpostoRendaWidgetState extends State<ImpostoRendaWidget> {
  late ImpostoRendaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImpostoRendaModel());
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
              FlutterFlowPdfViewer(
                networkPath:
                    'https://acessoseguro.unihospsaude.com.br/app/blankGeraImpostoDeRenda/blankGeraImpostoDeRenda.php?gblMatricula=${widget.gblMatricula?.toString()}&gblAnoImpostoDeRenda=${widget.gblAnoImpostoDeRenda}',
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                horizontalScroll: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
