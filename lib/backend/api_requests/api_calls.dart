import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DadosBeneficiarioCall {
  static Future<ApiCallResponse> call({
    int? gblMatricula,
    int? gblDependente,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DadosBeneficiario',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankApiDadosBeneficiario/blankApiDadosBeneficiario.php',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'gblMatricula': gblMatricula,
        'gblDependente': gblDependente,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? matricula(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.matricula''',
      ));
  static int? dep(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.dep''',
      ));
  static String? nomeBeneficiario(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nomeBeneficiario''',
      ));
  static String? plano(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.plano''',
      ));
  static String? empresa(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.empresa''',
      ));
  static String? cpf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cpf''',
      ));
}

class ApiValidaMatriculaBeneficiarioCall {
  static Future<ApiCallResponse> call({
    String? gblMatriculaBeneficiario = '',
    String? gblDependente = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiValidaMatriculaBeneficiario',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankApiValidaMatriculaBeneficiario/blankApiValidaMatriculaBeneficiario.php',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'gblMatriculaBeneficiario': gblMatriculaBeneficiario,
        'gblDependente': gblDependente,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? pathCarregaDados(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carregaDado''',
      ));
  static String? nomeTitular(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nomeTitular''',
      ));
  static String? nomeMae(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nomeMae''',
      ));
}

class ApiTipoBeneficiarioCall {
  static Future<ApiCallResponse> call({
    String? gblMatricula = '',
    int? gblDependente = 0,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiTipoBeneficiario',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankValidaTipoBeneficiario/blankValidaTipoBeneficiario.php',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'gblMatricula': gblMatricula,
        'gblDependente': gblDependente,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? patchtipoBeneficiario(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tipoBeneficiario''',
      ));
}

class ApiBlankLoginCall {
  static Future<ApiCallResponse> call({
    String? gblLogin = '',
    String? gblSenha = '',
    String? gblTipoAcesso = 'beneficiario',
    String? gblDependente = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiBlankLogin',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankLoginMobile/blankLoginMobile.php',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'gblLogin': gblLogin,
        'gblSenha': gblSenha,
        'gblTipoAcesso': "beneficiario",
        'gblDependente': gblDependente,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? loginCarregaDados(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carregaDado''',
      ));
  static String? matricula(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.matricula''',
      ));
  static String? dependente(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dependente''',
      ));
  static String? tipo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tipo''',
      ));
  static String? numeroAns(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.numeroAns''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome''',
      ));
}

class ApiDadosCarteirinhaCall {
  static Future<ApiCallResponse> call({
    String? gblMatricula = '',
    int? gblDependente,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiDadosCarteirinha',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankApiDadosCarteirinha/blankApiDadosCarteirinha.php',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'gblMatricula': gblMatricula,
        'gblDependente': gblDependente,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? codigoEmp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ccodcli''',
      ));
  static int? matricula(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.matricula''',
      ));
  static int? dependente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.dependente''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome''',
      ));
  static String? dtmascimento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dtnasc''',
      ));
  static String? vigencia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vigencia''',
      ));
  static String? nomeplano(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nomeplano''',
      ));
  static String? cns(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cns''',
      ));
  static String? contato(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.contrato''',
      ));
  static String? ans(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ans''',
      ));
  static String? segmentacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.segmentacao''',
      ));
  static String? acomocao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.acomodacao''',
      ));
  static String? abrangencia(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.abrangencia''',
      ));
}

class ApiCarenciaCarteirinhaCall {
  static Future<ApiCallResponse> call({
    String? gblMatricula = '',
    int? gblDependente,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiCarenciaCarteirinha',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankApiCarenciasCarteirinha/blankApiCarenciasCarteirinha.php',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application json',
      },
      params: {
        'gblMatricula': gblMatricula,
        'gblDependente': gblDependente,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? carencia(dynamic response) => getJsonField(
        response,
        r'''$.carencia''',
        true,
      ) as List?;
  static List? validade(dynamic response) => getJsonField(
        response,
        r'''$.validade''',
        true,
      ) as List?;
}

class ApiDadosBeneficiariosFullCall {
  static Future<ApiCallResponse> call({
    String? gblMatricula = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiDadosBeneficiariosFull',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankDadosBeneficiariosFull/blankDadosBeneficiariosFull.php',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application json',
      },
      params: {
        'gblMatricula': gblMatricula,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? matricula(dynamic response) => (getJsonField(
        response,
        r'''$[:].matricula''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? dependente(dynamic response) => (getJsonField(
        response,
        r'''$[:].dependente''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiCadastrarBeneficiarioCall {
  static Future<ApiCallResponse> call({
    String? gblMatriculaBeneficiario = '',
    String? gblNomeBeneficiario = '',
    String? gblNomeMaeBeneficiario = '',
    int? gblCpfBeneficiario,
    int? gblTelefoneBeneficiario,
    String? gblEmailBeneficiario = '',
    String? gblSenhaBeneficiario = '',
    String? gblDependente = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiCadastrarBeneficiario',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankApiCadastroSiteBeneficiario/blankApiCadastroSiteBeneficiario.php',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'gblMatriculaBeneficiario': gblMatriculaBeneficiario,
        'gblNomeBeneficiario': gblNomeBeneficiario,
        'gblNomeMaeBeneficiario': gblNomeMaeBeneficiario,
        'gblCpfBeneficiario': gblCpfBeneficiario,
        'gblTelefoneBeneficiario': gblTelefoneBeneficiario,
        'gblEmailBeneficiario': gblEmailBeneficiario,
        'gblSenhaBeneficiario': gblSenhaBeneficiario,
        'gblDependente': gblDependente,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? carregaDado(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carregaDado''',
      ));
}

class ApiConsultaConfiguracaoCall {
  static Future<ApiCallResponse> call({
    String? gblMatricula = '',
    String? gblDependente = '',
    String? gblTipo = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiConsultaConfiguracao',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankAppConsultaConfiguracoes/blankAppConsultaConfiguracoes.php',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'gblMatricula': gblMatricula,
        'gblDependente': gblDependente,
        'gblTipo': gblTipo,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? carregaDado(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.carregaDado''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class ApiAtualizaConfiguracaoCall {
  static Future<ApiCallResponse> call({
    String? gblTipo = '',
    String? descricao = '',
    String? ucodcon = '',
    String? ucoddep = '',
    String? status = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiAtualizaConfiguracao',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankAppConfiguracao/blankAppConfiguracao.php',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'gblTipo': gblTipo,
        'descricao': descricao,
        'ucodcon': ucodcon,
        'ucoddep': ucoddep,
        'status': status,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BlankAppValidaRecuperacaoSenhaCall {
  static Future<ApiCallResponse> call({
    String? gblUsuario = '',
    String? gblNascimentoTitular = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'blankAppValidaRecuperacaoSenha',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankAppValidaRecuperacaoSenha/blankAppValidaRecuperacaoSenha.php?gblUsuario=34813479871&gblNascimentoTitular=1986-01-22',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'gblUsuario': gblUsuario,
        'gblNascimentoTitular': gblNascimentoTitular,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCartaPermanenciaCall {
  static Future<ApiCallResponse> call({
    String? gblMatricula = '0',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiCartaPermanencia',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/app/blankApiCartaPermanencia/blankApiCartaPermanencia.php',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'gblMatricula': gblMatricula,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? inclusao(dynamic response) => (getJsonField(
        response,
        r'''$[:].inclusao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  static String? plano(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].plano''',
      ));
  static String? produto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].produto''',
      ));
  static String? acomodacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].acomodacao''',
      ));
  static String? carencia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].carencia''',
      ));
  static List? dataPagto(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ApiUnihospCall {
  static Future<ApiCallResponse> call({
    String? key = 'Un32\$1%26jB%2371kC',
    String? parametro = 'matricula',
    String? valor = '000143',
    String? busca = 'boleto',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiUnihosp',
      apiUrl:
          'https://acessoseguro.unihospsaude.com.br/webservice/unihospapi/web_api_app_unihosp/?key=Un32\$1%26jB%2371kC&parametro=matricula&valor=000143-00&busca=boleto',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? matricula(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].matricula''',
      ));
  static String? titular(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].titular''',
      ));
  static String? parcela(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].parcela''',
      ));
  static String? vencimento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].vencimento''',
      ));
  static String? valor(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].valor''',
      ));
  static String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].link''',
      ));
  static String? linhadigitavel(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].linhadigitavel''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
