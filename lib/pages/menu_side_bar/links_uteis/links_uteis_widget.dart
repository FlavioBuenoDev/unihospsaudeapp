import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cabecalho_paginas/cabecalho_paginas_widget.dart';
import 'package:flutter/material.dart';
import 'links_uteis_model.dart';
export 'links_uteis_model.dart';

class LinksUteisWidget extends StatefulWidget {
  const LinksUteisWidget({super.key});

  @override
  State<LinksUteisWidget> createState() => _LinksUteisWidgetState();
}

class _LinksUteisWidgetState extends State<LinksUteisWidget> {
  late LinksUteisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LinksUteisModel());
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SafeArea(
                    child: Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: FlutterFlowTheme.of(context).primaryText,
                            offset: const Offset(
                              0.0,
                              3.0,
                            ),
                          )
                        ],
                      ),
                      child: wrapWithModel(
                        model: _model.cabecalhoPaginasModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const CabecalhoPaginasWidget(
                          textcabecalho: 'Links Úteis',
                        ),
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: Color(0x73000000),
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 4.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
