import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'atualizacao_cadastral_model.dart';
export 'atualizacao_cadastral_model.dart';

class AtualizacaoCadastralWidget extends StatefulWidget {
  const AtualizacaoCadastralWidget({
    super.key,
    String? gblMatricula,
    String? gblDependente,
    String? gblDivulgacao,
  })  : gblMatricula = gblMatricula ?? '0',
        gblDependente = gblDependente ?? '0',
        gblDivulgacao = gblDivulgacao ?? '0';

  final String gblMatricula;
  final String gblDependente;
  final String gblDivulgacao;

  @override
  State<AtualizacaoCadastralWidget> createState() =>
      _AtualizacaoCadastralWidgetState();
}

class _AtualizacaoCadastralWidgetState
    extends State<AtualizacaoCadastralWidget> {
  late AtualizacaoCadastralModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AtualizacaoCadastralModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 389.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: FlutterFlowWebView(
          content:
              'https://acessoseguro.unihospsaude.com.br/app/controlAtualizacaoCadastral/controlAtualizacaoCadastral.php?gblMatricula=${FFAppState().stategblMatricula}&gblDependente=${FFAppState().stategblDependente}&gblDivulgacao=${widget.gblDependente}&gblNumeroAns=482332190',
          bypass: true,
          width: MediaQuery.sizeOf(context).width * 1.195,
          height: MediaQuery.sizeOf(context).height * 1.0,
          verticalScroll: false,
          horizontalScroll: false,
        ),
      ),
    );
  }
}
