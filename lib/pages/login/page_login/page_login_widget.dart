import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cadastro/cadastrar_beneficiario/cadastrar_beneficiario_widget.dart';
import '/pages/components/notificacoes/alert_dinamic_danger/alert_dinamic_danger_widget.dart';
import '/pages/components/notificacoes/beneficiario_inativo/beneficiario_inativo_widget.dart';
import '/pages/components/notificacoes/erro_beneficiario/erro_beneficiario_widget.dart';
import '/pages/components/redefinirsenha/redefir_senha/redefir_senha_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'page_login_model.dart';
export 'page_login_model.dart';

class PageLoginWidget extends StatefulWidget {
  const PageLoginWidget({super.key});

  @override
  State<PageLoginWidget> createState() => _PageLoginWidgetState();
}

class _PageLoginWidgetState extends State<PageLoginWidget> {
  late PageLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageLoginModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().stategblMatricula = '\'\'';
      FFAppState().stateSenha = '0';
      safeSetState(() {});
    });

    _model.cmpMatriculaTextController ??= TextEditingController();
    _model.cmpMatriculaFocusNode ??= FocusNode();

    _model.cmpDependenteTextController ??= TextEditingController();
    _model.cmpDependenteFocusNode ??= FocusNode();

    _model.cmpCPFTextController ??= TextEditingController();
    _model.cmpCPFFocusNode ??= FocusNode();

    _model.cmpSenhaTextController ??= TextEditingController();
    _model.cmpSenhaFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.cmpDependenteTextController?.text = '0';
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFCCD8E3),
                    Color(0xFFADC7E5),
                    Color(0xFF94B5E7),
                    Color(0xFF9AB9E7),
                    Color(0xFFADC7E5),
                    Color(0xFFBCD0E4),
                    Color(0xFFA0BEE6),
                    Color(0xFF9AB9E7),
                    Color(0xFF9AB9E7),
                    Color(0xFFA0BEE6),
                    Color(0xFFBCD0E4),
                    Color(0xFFCCD8E3)
                  ],
                  stops: [
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    1.0,
                    1.0,
                    1.0,
                    1.0,
                    1.0,
                    1.0,
                    1.0
                  ],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().stategblMatricula = '';
                      FFAppState().stateSenha = '';
                      FFAppState().stategblLogin = '';
                      safeSetState(() {});
                    },
                    child: Container(
                      width: 349.0,
                      height: 650.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/grp__NM__LogoUnihospRegANS.png',
                                    width: 130.0,
                                    height: 74.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.always,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 8.0, 8.0),
                                        child: Text(
                                          'Vamos começar, qual modo de entrada deseja ?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 8.0),
                                        child: FlutterFlowRadioButton(
                                          options:
                                              ['CPF', 'Matricula'].toList(),
                                          onChanged: (val) =>
                                              safeSetState(() {}),
                                          controller: _model
                                                  .radioButtonValueController ??=
                                              FormFieldController<String>(
                                                  'CPF'),
                                          optionHeight: 32.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily),
                                              ),
                                          selectedTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.horizontal,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 8.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              if (_model.radioButtonValue ==
                                                  'Matricula')
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .cmpMatriculaTextController,
                                                        focusNode: _model
                                                            .cmpMatriculaFocusNode,
                                                        autofocus: false,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              'Matricula',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'SegoeUI',
                                                                    color: const Color(
                                                                        0xFF454545),
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            'SegoeUI'),
                                                                  ),
                                                          alignLabelWithHint:
                                                              false,
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).labelMediumFamily),
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          prefixIcon: const Icon(
                                                            Icons.person_sharp,
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'SegoeUI',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'SegoeUI'),
                                                                ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLines: null,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        validator: _model
                                                            .cmpMatriculaTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (_model.radioButtonValue ==
                                                  'Matricula')
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  8.0,
                                                                  0.0),
                                                      child: SizedBox(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.25,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .cmpDependenteTextController,
                                                          focusNode: _model
                                                              .cmpDependenteFocusNode,
                                                          autofocus: false,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'Dependente',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'SegoeUI',
                                                                      color: const Color(
                                                                          0xFF454545),
                                                                      fontSize:
                                                                          15.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'SegoeUI'),
                                                                    ),
                                                            alignLabelWithHint:
                                                                false,
                                                            hintText:
                                                                'Dependente',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).labelMediumFamily),
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'SegoeUI',
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'SegoeUI'),
                                                              ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: null,
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          validator: _model
                                                              .cmpDependenteTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      if (valueOrDefault<bool>(
                                        _model.radioButtonValue == 'CPF',
                                        true,
                                      ))
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 16.0, 8.0, 0.0),
                                            child: SizedBox(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.8,
                                              child: TextFormField(
                                                controller:
                                                    _model.cmpCPFTextController,
                                                focusNode:
                                                    _model.cmpCPFFocusNode,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'CPF',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SegoeUI',
                                                        color:
                                                            const Color(0xFF454545),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'SegoeUI'),
                                                      ),
                                                  alignLabelWithHint: false,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMediumFamily),
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  prefixIcon: const Icon(
                                                    Icons.person_sharp,
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'SegoeUI',
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'SegoeUI'),
                                                    ),
                                                textAlign: TextAlign.start,
                                                maxLines: null,
                                                maxLength: 11,
                                                maxLengthEnforcement:
                                                    MaxLengthEnforcement
                                                        .enforced,
                                                keyboardType:
                                                    TextInputType.number,
                                                validator: _model
                                                    .cmpCPFTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 16.0, 8.0, 16.0),
                                          child: SizedBox(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.8,
                                            child: TextFormField(
                                              controller:
                                                  _model.cmpSenhaTextController,
                                              focusNode:
                                                  _model.cmpSenhaFocusNode,
                                              autofocus: false,
                                              obscureText:
                                                  !_model.cmpSenhaVisibility,
                                              decoration: InputDecoration(
                                                labelText: 'Senha',
                                                labelStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'SegoeUI',
                                                      color: const Color(0xFF454545),
                                                      fontSize: 15.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'SegoeUI'),
                                                    ),
                                                alignLabelWithHint: false,
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                prefixIcon: const Icon(
                                                  Icons.password_sharp,
                                                ),
                                                suffixIcon: InkWell(
                                                  onTap: () => safeSetState(
                                                    () => _model
                                                            .cmpSenhaVisibility =
                                                        !_model
                                                            .cmpSenhaVisibility,
                                                  ),
                                                  focusNode: FocusNode(
                                                      skipTraversal: true),
                                                  child: Icon(
                                                    _model.cmpSenhaVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    size: 22,
                                                  ),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SegoeUI',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'SegoeUI'),
                                                      ),
                                              textAlign: TextAlign.start,
                                              validator: _model
                                                  .cmpSenhaTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (_model.radioButtonValue == 'Matricula')
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        _model.apiResultLoginMatricula =
                                            await ApiBlankLoginCall.call(
                                          gblLogin: _model
                                              .cmpMatriculaTextController.text,
                                          gblSenha: _model
                                              .cmpSenhaTextController.text,
                                          gblDependente: _model
                                              .cmpDependenteTextController.text,
                                          gblTipoAcesso: 'beneficiario',
                                        );

                                        if (ApiBlankLoginCall.loginCarregaDados(
                                              (_model.apiResultLoginMatricula
                                                      ?.jsonBody ??
                                                  ''),
                                            ) ==
                                            'semcadastro') {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      const AlertDinamicDangerWidget(
                                                    textAlert:
                                                        'Beneficiário não está cadastrado no app.',
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      const CadastrarBeneficiarioWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        } else {
                                          if (ApiBlankLoginCall
                                                  .loginCarregaDados(
                                                (_model.apiResultLoginMatricula
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              'beneficiario') {
                                            if (ApiBlankLoginCall.tipo(
                                                  (_model.apiResultLoginMatricula
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                'BENEFICIARIO_PF') {
                                              context.pushNamed(
                                                'DashboardPage',
                                                queryParameters: {
                                                  'gblMatricula':
                                                      serializeParam(
                                                    int.tryParse(_model
                                                        .cmpMatriculaTextController
                                                        .text),
                                                    ParamType.int,
                                                  ),
                                                  'glbSenha': serializeParam(
                                                    (_model.cmpSenhaFocusNode
                                                                ?.hasFocus ??
                                                            false)
                                                        .toString(),
                                                    ParamType.String,
                                                  ),
                                                  'gblLogin': serializeParam(
                                                    _model
                                                        .cmpMatriculaTextController
                                                        .text,
                                                    ParamType.String,
                                                  ),
                                                  'gblDependente':
                                                      serializeParam(
                                                    int.tryParse(_model
                                                        .cmpDependenteTextController
                                                        .text),
                                                    ParamType.int,
                                                  ),
                                                  'gblDivulgacao':
                                                      serializeParam(
                                                    getJsonField(
                                                      (_model.apiResultLoginMatricula
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.tipo''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                  'gblNumeroAns':
                                                      serializeParam(
                                                    getJsonField(
                                                      (_model.apiResultLoginMatricula
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.numeroAns''',
                                                    ),
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );

                                              FFAppState().stategblMatricula =
                                                  ApiBlankLoginCall.matricula(
                                                (_model.apiResultLoginMatricula
                                                        ?.jsonBody ??
                                                    ''),
                                              )!;
                                              FFAppState().stateSenha = _model
                                                  .cmpSenhaTextController.text;
                                              FFAppState().stategblLogin = _model
                                                  .cmpMatriculaTextController
                                                  .text;
                                              FFAppState().stategblDependente =
                                                  ApiBlankLoginCall.dependente(
                                                (_model.apiResultLoginMatricula
                                                        ?.jsonBody ??
                                                    ''),
                                              )!;
                                              FFAppState().gblDivulgacao =
                                                  ApiBlankLoginCall.tipo(
                                                (_model.apiResultLoginMatricula
                                                        ?.jsonBody ??
                                                    ''),
                                              )!;
                                              FFAppState().gblNome =
                                                  ApiBlankLoginCall.nome(
                                                (_model.apiResultLoginMatricula
                                                        ?.jsonBody ??
                                                    ''),
                                              )!;
                                            } else {
                                              if (ApiBlankLoginCall.tipo(
                                                    (_model.apiResultLoginMatricula
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) ==
                                                  'BENEFICIARIO_PJ') {
                                                context.pushNamed(
                                                  'DashboardPage',
                                                  queryParameters: {
                                                    'gblMatricula':
                                                        serializeParam(
                                                      int.tryParse(_model
                                                          .cmpMatriculaTextController
                                                          .text),
                                                      ParamType.int,
                                                    ),
                                                    'glbSenha': serializeParam(
                                                      (_model.cmpSenhaFocusNode
                                                                  ?.hasFocus ??
                                                              false)
                                                          .toString(),
                                                      ParamType.String,
                                                    ),
                                                    'gblLogin': serializeParam(
                                                      _model
                                                          .cmpMatriculaTextController
                                                          .text,
                                                      ParamType.String,
                                                    ),
                                                    'gblDependente':
                                                        serializeParam(
                                                      int.tryParse(_model
                                                          .cmpDependenteTextController
                                                          .text),
                                                      ParamType.int,
                                                    ),
                                                    'gblDivulgacao':
                                                        serializeParam(
                                                      getJsonField(
                                                        (_model.apiResultLoginMatricula
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.tipo''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'gblNumeroAns':
                                                        serializeParam(
                                                      getJsonField(
                                                        (_model.apiResultLoginCpf
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.numeroAns''',
                                                      ),
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                FFAppState().stategblMatricula =
                                                    ApiBlankLoginCall.matricula(
                                                  (_model.apiResultLoginMatricula
                                                          ?.jsonBody ??
                                                      ''),
                                                )!;
                                                FFAppState().stateSenha = _model
                                                    .cmpSenhaTextController
                                                    .text;
                                                FFAppState().stategblLogin = _model
                                                    .cmpMatriculaTextController
                                                    .text;
                                                FFAppState()
                                                        .stategblDependente =
                                                    ApiBlankLoginCall
                                                        .dependente(
                                                  (_model.apiResultLoginMatricula
                                                          ?.jsonBody ??
                                                      ''),
                                                )!;
                                                FFAppState().gblDivulgacao =
                                                    ApiBlankLoginCall.tipo(
                                                  (_model.apiResultLoginMatricula
                                                          ?.jsonBody ??
                                                      ''),
                                                )!;
                                                FFAppState().gblNome =
                                                    ApiBlankLoginCall.nome(
                                                  (_model.apiResultLoginMatricula
                                                          ?.jsonBody ??
                                                      ''),
                                                )!;
                                              } else {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return WebViewAware(
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const BeneficiarioInativoWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              }
                                            }
                                          } else {
                                            if (ApiBlankLoginCall
                                                    .loginCarregaDados(
                                                  (_model.apiResultLoginMatricula
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                'Senha incorreta.') {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return WebViewAware(
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          const AlertDinamicDangerWidget(
                                                        textAlert:
                                                            'Senha incorreta, tente novamente',
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            } else {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return WebViewAware(
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          const ErroBeneficiarioWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            }
                                          }
                                        }

                                        safeSetState(() {});
                                      },
                                      text: 'Entrar',
                                      options: FFButtonOptions(
                                        width: 286.0,
                                        height: 44.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              if (_model.radioButtonValue == 'CPF')
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 8.0, 8.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        _model.resultCpf =
                                            await actions.validarCPF(
                                          valueOrDefault<String>(
                                            _model.cmpCPFTextController.text,
                                            '0',
                                          ),
                                        );
                                        if (_model.resultCpf == true) {
                                          _model.apiResultLoginCpf =
                                              await ApiBlankLoginCall.call(
                                            gblLogin: valueOrDefault<String>(
                                              _model.cmpCPFTextController.text,
                                              '0',
                                            ),
                                            gblSenha: _model
                                                .cmpSenhaTextController.text,
                                            gblTipoAcesso: 'beneficiario',
                                            gblDependente: '0',
                                          );

                                          if (ApiBlankLoginCall
                                                  .loginCarregaDados(
                                                (_model.apiResultLoginCpf
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              'semcadastro') {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const AlertDinamicDangerWidget(
                                                      textAlert:
                                                          'Beneficiário não está cadastrado no app.',
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));

                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const CadastrarBeneficiarioWidget(),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          } else {
                                            if (ApiBlankLoginCall
                                                    .loginCarregaDados(
                                                  (_model.apiResultLoginCpf
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                'beneficiario') {
                                              if (ApiBlankLoginCall.tipo(
                                                    (_model.apiResultLoginCpf
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) ==
                                                  'BENEFICIARIO_PF') {
                                                context.pushNamed(
                                                  'DashboardPage',
                                                  queryParameters: {
                                                    'gblMatricula':
                                                        serializeParam(
                                                      getJsonField(
                                                        (_model.apiResultLoginCpf
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.matricula''',
                                                      ),
                                                      ParamType.int,
                                                    ),
                                                    'glbSenha': serializeParam(
                                                      (_model.cmpSenhaFocusNode
                                                                  ?.hasFocus ??
                                                              false)
                                                          .toString(),
                                                      ParamType.String,
                                                    ),
                                                    'gblLogin': serializeParam(
                                                      _model
                                                          .cmpMatriculaTextController
                                                          .text,
                                                      ParamType.String,
                                                    ),
                                                    'gblDependente':
                                                        serializeParam(
                                                      getJsonField(
                                                        (_model.apiResultLoginCpf
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.dependente''',
                                                      ),
                                                      ParamType.int,
                                                    ),
                                                    'gblDivulgacao':
                                                        serializeParam(
                                                      getJsonField(
                                                        (_model.apiResultLoginCpf
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.tipo''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'gblNumeroAns':
                                                        serializeParam(
                                                      getJsonField(
                                                        (_model.apiResultLoginCpf
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.numeroAns''',
                                                      ),
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                FFAppState().stategblMatricula =
                                                    getJsonField(
                                                  (_model.apiResultLoginCpf
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.matricula''',
                                                ).toString();
                                                FFAppState().stateSenha = _model
                                                    .cmpSenhaTextController
                                                    .text;
                                                FFAppState().stategblLogin = _model
                                                    .cmpMatriculaTextController
                                                    .text;
                                                FFAppState()
                                                        .stategblDependente =
                                                    getJsonField(
                                                  (_model.apiResultLoginCpf
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.dependente''',
                                                ).toString();
                                                FFAppState().gblDivulgacao =
                                                    getJsonField(
                                                  (_model.apiResultLoginMatricula
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.tipo''',
                                                ).toString();
                                                FFAppState().gblNome =
                                                    getJsonField(
                                                  (_model.apiResultLoginMatricula
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.nome''',
                                                ).toString();
                                              } else {
                                                if (ApiBlankLoginCall.tipo(
                                                      (_model.apiResultLoginCpf
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    'BENEFICIARIO_PJ') {
                                                  context.pushNamed(
                                                    'DashboardPage',
                                                    queryParameters: {
                                                      'gblMatricula':
                                                          serializeParam(
                                                        getJsonField(
                                                          (_model.apiResultLoginCpf
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.matricula''',
                                                        ),
                                                        ParamType.int,
                                                      ),
                                                      'glbSenha':
                                                          serializeParam(
                                                        (_model.cmpSenhaFocusNode
                                                                    ?.hasFocus ??
                                                                false)
                                                            .toString(),
                                                        ParamType.String,
                                                      ),
                                                      'gblLogin':
                                                          serializeParam(
                                                        _model
                                                            .cmpMatriculaTextController
                                                            .text,
                                                        ParamType.String,
                                                      ),
                                                      'gblDependente':
                                                          serializeParam(
                                                        getJsonField(
                                                          (_model.apiResultLoginCpf
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.dependente''',
                                                        ),
                                                        ParamType.int,
                                                      ),
                                                      'gblDivulgacao':
                                                          serializeParam(
                                                        ApiBlankLoginCall.tipo(
                                                          (_model.apiResultLoginCpf
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        ParamType.String,
                                                      ),
                                                      'gblNumeroAns':
                                                          serializeParam(
                                                        getJsonField(
                                                          (_model.apiResultLoginCpf
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.numeroAns''',
                                                        ),
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                  );

                                                  FFAppState()
                                                          .stategblMatricula =
                                                      ApiBlankLoginCall
                                                          .matricula(
                                                    (_model.apiResultLoginCpf
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                  FFAppState().stateSenha =
                                                      _model
                                                          .cmpSenhaTextController
                                                          .text;
                                                  FFAppState().stategblLogin =
                                                      _model
                                                          .cmpMatriculaTextController
                                                          .text;
                                                  FFAppState()
                                                          .stategblDependente =
                                                      getJsonField(
                                                    (_model.apiResultLoginCpf
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.dependente''',
                                                  ).toString();
                                                  FFAppState().gblDivulgacao =
                                                      getJsonField(
                                                    (_model.apiResultLoginMatricula
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.tipo''',
                                                  ).toString();
                                                  FFAppState().gblNome =
                                                      ApiBlankLoginCall.nome(
                                                    (_model.apiResultLoginMatricula
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                } else {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return WebViewAware(
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              const BeneficiarioInativoWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                }
                                              }
                                            } else {
                                              if (ApiBlankLoginCall
                                                      .loginCarregaDados(
                                                    (_model.apiResultLoginCpf
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) ==
                                                  'Senha incorreta.') {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return WebViewAware(
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const AlertDinamicDangerWidget(
                                                          textAlert:
                                                              'Senha incorreta, tente novamente',
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              } else {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return WebViewAware(
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const ErroBeneficiarioWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              }
                                            }
                                          }
                                        } else {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      const AlertDinamicDangerWidget(
                                                    textAlert: 'Cpf Invalido',
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        }

                                        safeSetState(() {});
                                      },
                                      text: 'Entrar',
                                      icon: const FaIcon(
                                        FontAwesomeIcons.signInAlt,
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        width: 286.0,
                                        height: 44.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 10.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    4.0, 20.0, 4.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return WebViewAware(
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: const RedefirSenhaWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      child: Text(
                                        'Esqueceu a senha?',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return WebViewAware(
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child:
                                                    const CadastrarBeneficiarioWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      child: Text(
                                        'Cadastre-se',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 343.0,
                                height: 1.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF94A6B2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
