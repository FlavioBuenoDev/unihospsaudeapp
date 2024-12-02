import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/pages/components/cabecalho_paginas/cabecalho_paginas_widget.dart';
import 'package:flutter/material.dart';
import 'politica_privacidade_model.dart';
export 'politica_privacidade_model.dart';

class PoliticaPrivacidadeWidget extends StatefulWidget {
  const PoliticaPrivacidadeWidget({super.key});

  @override
  State<PoliticaPrivacidadeWidget> createState() =>
      _PoliticaPrivacidadeWidgetState();
}

class _PoliticaPrivacidadeWidgetState extends State<PoliticaPrivacidadeWidget> {
  late PoliticaPrivacidadeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PoliticaPrivacidadeModel());
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
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.cabecalhoPaginasModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const CabecalhoPaginasWidget(
                      textcabecalho: 'Politicas e Privacidade',
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 714.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: FlutterFlowWebView(
                  content:
                      '<!DOCTYPE html>\n<html lang=\"pt-br\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Política de Privacidade</title>\n    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css\">   \n\n</head>\n<body>\n    <div class=\"container\">   \n\n        <h1>Política de Privacidade</h1>\n\t\t<h2>Quem somos </h2>\n        <p>O endereço do nosso app é: https://unihospsaude.com.br.</p>\n\n        <h2>Comentários</h2>\n        <p>Quando os visitantes deixam comentários no App, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.\n\nUma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p> \n\t<h2>Mídia</h2>\n    <p>Se você envia imagens para o App, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do App e extrair delas seus dados de localização.</p>\n    <h2>Cookies</h2>\n    <p>Ao deixar um comentário no App, você poderá optar por salvar seu nome, e-mail e App nos cookies. Isso visa seu conforto, assim você não precisará preencher seus dados novamente quando fizer outro comentário. Estes cookies duram um ano.\n\nSe você tem uma conta e acessa este App, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.\n\nQuando você acessa sua conta no App, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar “Lembrar-me”, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.\n\nSe você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p>\n\n<h2>Com quem compartilhamos seus dados</h2>\n<p>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p>\n<h2>Por quanto tempo mantemos os seus dados</h2>\n<p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.\n\nPara usuários que se registram no nosso App (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de Apps também podem ver e editar estas informações.</p>\n<h2>Quais os seus direitos sobre seus dados</h2>\n<p>Se você tiver uma conta neste App ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança</p>\n<h2>Para onde seus dados são enviados</h2>\n<p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p>\n</div>\n    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js\"></script>\n</body>\n</html>',
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  verticalScroll: false,
                  horizontalScroll: false,
                  html: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
