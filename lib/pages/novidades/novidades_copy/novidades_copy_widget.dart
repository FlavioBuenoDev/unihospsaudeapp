import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cabecalho_paginas/cabecalho_paginas_widget.dart';
import 'package:flutter/material.dart';
import 'novidades_copy_model.dart';
export 'novidades_copy_model.dart';

class NovidadesCopyWidget extends StatefulWidget {
  const NovidadesCopyWidget({super.key});

  @override
  State<NovidadesCopyWidget> createState() => _NovidadesCopyWidgetState();
}

class _NovidadesCopyWidgetState extends State<NovidadesCopyWidget> {
  late NovidadesCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovidadesCopyModel());
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
                Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: wrapWithModel(
                    model: _model.cabecalhoPaginasModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const CabecalhoPaginasWidget(
                      textcabecalho: 'Novidades',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
