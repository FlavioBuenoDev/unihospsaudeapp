import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cabecalho_paginas/cabecalho_paginas_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'configuracoes_model.dart';
export 'configuracoes_model.dart';

class ConfiguracoesWidget extends StatefulWidget {
  const ConfiguracoesWidget({super.key});

  @override
  State<ConfiguracoesWidget> createState() => _ConfiguracoesWidgetState();
}

class _ConfiguracoesWidgetState extends State<ConfiguracoesWidget> {
  late ConfiguracoesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfiguracoesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultNotificacao = await ApiConsultaConfiguracaoCall.call(
        gblMatricula: FFAppState().stategblMatricula,
        gblDependente: FFAppState().stategblDependente,
        gblTipo: 'NOTIFICACAO',
      );

      if (ApiConsultaConfiguracaoCall.carregaDado(
            (_model.apiResultNotificacao?.jsonBody ?? ''),
          ) !=
          'NOTIFICACAO') {
        _model.apiResultInsert = await ApiAtualizaConfiguracaoCall.call(
          gblTipo: 'insert',
          descricao: 'NOTIFICACAO',
          ucodcon: FFAppState().stategblMatricula,
          ucoddep: FFAppState().stategblDependente,
          status: true.toString(),
        );
      }
    });

    _model.switchValue = !FFAppState().isNotificacao;
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
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
                    textcabecalho: 'Configuraçõe do app',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 1.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 133.0,
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
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 30.0, 4.0, 10.0),
                            child: Text(
                              'Notificações',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Deseja receber notificações da unihosp saude',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                              Switch.adaptive(
                                value: _model.switchValue!,
                                onChanged: (newValue) async {
                                  safeSetState(
                                      () => _model.switchValue = newValue);
                                  if (newValue) {
                                    FFAppState().isNotificacao = true;
                                    safeSetState(() {});
                                    _model.apiResultAtualizaConf =
                                        await ApiAtualizaConfiguracaoCall.call(
                                      gblTipo: 'update',
                                      descricao: 'NOTIFICACAO',
                                      ucodcon: FFAppState().stategblMatricula,
                                      ucoddep: FFAppState().stategblDependente,
                                      status: true.toString(),
                                    );

                                    safeSetState(() {});
                                  } else {
                                    FFAppState().isNotificacao = false;
                                    safeSetState(() {});
                                    _model.apiResultAtualizaConfOff =
                                        await ApiAtualizaConfiguracaoCall.call(
                                      gblTipo: 'update',
                                      descricao: 'NOTIFICACAO',
                                      ucodcon: FFAppState().stategblMatricula,
                                      ucoddep: FFAppState().stategblDependente,
                                      status: false.toString(),
                                    );

                                    safeSetState(() {});
                                  }
                                },
                                activeColor:
                                    FlutterFlowTheme.of(context).secondary,
                                activeTrackColor: Colors.white,
                                inactiveTrackColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                inactiveThumbColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
