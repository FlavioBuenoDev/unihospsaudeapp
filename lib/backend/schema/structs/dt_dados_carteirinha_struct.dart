// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtDadosCarteirinhaStruct extends BaseStruct {
  DtDadosCarteirinhaStruct({
    String? error,
    int? ccodcli,
    String? nomeempresa,
    int? matricula,
    int? dependente,
    String? nome,
    String? dtnasc,
    String? vigencia,
    String? nomeplano,
    String? cns,
    String? contrato,
    String? ans,
    String? segmentacao,
    String? acomodacao,
    String? abrangencia,
  })  : _error = error,
        _ccodcli = ccodcli,
        _nomeempresa = nomeempresa,
        _matricula = matricula,
        _dependente = dependente,
        _nome = nome,
        _dtnasc = dtnasc,
        _vigencia = vigencia,
        _nomeplano = nomeplano,
        _cns = cns,
        _contrato = contrato,
        _ans = ans,
        _segmentacao = segmentacao,
        _acomodacao = acomodacao,
        _abrangencia = abrangencia;

  // "error" field.
  String? _error;
  String get error => _error ?? '';
  set error(String? val) => _error = val;

  bool hasError() => _error != null;

  // "ccodcli" field.
  int? _ccodcli;
  int get ccodcli => _ccodcli ?? 0;
  set ccodcli(int? val) => _ccodcli = val;

  void incrementCcodcli(int amount) => ccodcli = ccodcli + amount;

  bool hasCcodcli() => _ccodcli != null;

  // "nomeempresa" field.
  String? _nomeempresa;
  String get nomeempresa => _nomeempresa ?? '';
  set nomeempresa(String? val) => _nomeempresa = val;

  bool hasNomeempresa() => _nomeempresa != null;

  // "matricula" field.
  int? _matricula;
  int get matricula => _matricula ?? 0;
  set matricula(int? val) => _matricula = val;

  void incrementMatricula(int amount) => matricula = matricula + amount;

  bool hasMatricula() => _matricula != null;

  // "dependente" field.
  int? _dependente;
  int get dependente => _dependente ?? 0;
  set dependente(int? val) => _dependente = val;

  void incrementDependente(int amount) => dependente = dependente + amount;

  bool hasDependente() => _dependente != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "dtnasc" field.
  String? _dtnasc;
  String get dtnasc => _dtnasc ?? '';
  set dtnasc(String? val) => _dtnasc = val;

  bool hasDtnasc() => _dtnasc != null;

  // "vigencia" field.
  String? _vigencia;
  String get vigencia => _vigencia ?? '';
  set vigencia(String? val) => _vigencia = val;

  bool hasVigencia() => _vigencia != null;

  // "nomeplano" field.
  String? _nomeplano;
  String get nomeplano => _nomeplano ?? '';
  set nomeplano(String? val) => _nomeplano = val;

  bool hasNomeplano() => _nomeplano != null;

  // "cns" field.
  String? _cns;
  String get cns => _cns ?? '';
  set cns(String? val) => _cns = val;

  bool hasCns() => _cns != null;

  // "contrato" field.
  String? _contrato;
  String get contrato => _contrato ?? '';
  set contrato(String? val) => _contrato = val;

  bool hasContrato() => _contrato != null;

  // "ans" field.
  String? _ans;
  String get ans => _ans ?? '';
  set ans(String? val) => _ans = val;

  bool hasAns() => _ans != null;

  // "segmentacao" field.
  String? _segmentacao;
  String get segmentacao => _segmentacao ?? '';
  set segmentacao(String? val) => _segmentacao = val;

  bool hasSegmentacao() => _segmentacao != null;

  // "acomodacao" field.
  String? _acomodacao;
  String get acomodacao => _acomodacao ?? '';
  set acomodacao(String? val) => _acomodacao = val;

  bool hasAcomodacao() => _acomodacao != null;

  // "abrangencia" field.
  String? _abrangencia;
  String get abrangencia => _abrangencia ?? '';
  set abrangencia(String? val) => _abrangencia = val;

  bool hasAbrangencia() => _abrangencia != null;

  static DtDadosCarteirinhaStruct fromMap(Map<String, dynamic> data) =>
      DtDadosCarteirinhaStruct(
        error: data['error'] as String?,
        ccodcli: castToType<int>(data['ccodcli']),
        nomeempresa: data['nomeempresa'] as String?,
        matricula: castToType<int>(data['matricula']),
        dependente: castToType<int>(data['dependente']),
        nome: data['nome'] as String?,
        dtnasc: data['dtnasc'] as String?,
        vigencia: data['vigencia'] as String?,
        nomeplano: data['nomeplano'] as String?,
        cns: data['cns'] as String?,
        contrato: data['contrato'] as String?,
        ans: data['ans'] as String?,
        segmentacao: data['segmentacao'] as String?,
        acomodacao: data['acomodacao'] as String?,
        abrangencia: data['abrangencia'] as String?,
      );

  static DtDadosCarteirinhaStruct? maybeFromMap(dynamic data) => data is Map
      ? DtDadosCarteirinhaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'error': _error,
        'ccodcli': _ccodcli,
        'nomeempresa': _nomeempresa,
        'matricula': _matricula,
        'dependente': _dependente,
        'nome': _nome,
        'dtnasc': _dtnasc,
        'vigencia': _vigencia,
        'nomeplano': _nomeplano,
        'cns': _cns,
        'contrato': _contrato,
        'ans': _ans,
        'segmentacao': _segmentacao,
        'acomodacao': _acomodacao,
        'abrangencia': _abrangencia,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'error': serializeParam(
          _error,
          ParamType.String,
        ),
        'ccodcli': serializeParam(
          _ccodcli,
          ParamType.int,
        ),
        'nomeempresa': serializeParam(
          _nomeempresa,
          ParamType.String,
        ),
        'matricula': serializeParam(
          _matricula,
          ParamType.int,
        ),
        'dependente': serializeParam(
          _dependente,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'dtnasc': serializeParam(
          _dtnasc,
          ParamType.String,
        ),
        'vigencia': serializeParam(
          _vigencia,
          ParamType.String,
        ),
        'nomeplano': serializeParam(
          _nomeplano,
          ParamType.String,
        ),
        'cns': serializeParam(
          _cns,
          ParamType.String,
        ),
        'contrato': serializeParam(
          _contrato,
          ParamType.String,
        ),
        'ans': serializeParam(
          _ans,
          ParamType.String,
        ),
        'segmentacao': serializeParam(
          _segmentacao,
          ParamType.String,
        ),
        'acomodacao': serializeParam(
          _acomodacao,
          ParamType.String,
        ),
        'abrangencia': serializeParam(
          _abrangencia,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtDadosCarteirinhaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtDadosCarteirinhaStruct(
        error: deserializeParam(
          data['error'],
          ParamType.String,
          false,
        ),
        ccodcli: deserializeParam(
          data['ccodcli'],
          ParamType.int,
          false,
        ),
        nomeempresa: deserializeParam(
          data['nomeempresa'],
          ParamType.String,
          false,
        ),
        matricula: deserializeParam(
          data['matricula'],
          ParamType.int,
          false,
        ),
        dependente: deserializeParam(
          data['dependente'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        dtnasc: deserializeParam(
          data['dtnasc'],
          ParamType.String,
          false,
        ),
        vigencia: deserializeParam(
          data['vigencia'],
          ParamType.String,
          false,
        ),
        nomeplano: deserializeParam(
          data['nomeplano'],
          ParamType.String,
          false,
        ),
        cns: deserializeParam(
          data['cns'],
          ParamType.String,
          false,
        ),
        contrato: deserializeParam(
          data['contrato'],
          ParamType.String,
          false,
        ),
        ans: deserializeParam(
          data['ans'],
          ParamType.String,
          false,
        ),
        segmentacao: deserializeParam(
          data['segmentacao'],
          ParamType.String,
          false,
        ),
        acomodacao: deserializeParam(
          data['acomodacao'],
          ParamType.String,
          false,
        ),
        abrangencia: deserializeParam(
          data['abrangencia'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtDadosCarteirinhaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtDadosCarteirinhaStruct &&
        error == other.error &&
        ccodcli == other.ccodcli &&
        nomeempresa == other.nomeempresa &&
        matricula == other.matricula &&
        dependente == other.dependente &&
        nome == other.nome &&
        dtnasc == other.dtnasc &&
        vigencia == other.vigencia &&
        nomeplano == other.nomeplano &&
        cns == other.cns &&
        contrato == other.contrato &&
        ans == other.ans &&
        segmentacao == other.segmentacao &&
        acomodacao == other.acomodacao &&
        abrangencia == other.abrangencia;
  }

  @override
  int get hashCode => const ListEquality().hash([
        error,
        ccodcli,
        nomeempresa,
        matricula,
        dependente,
        nome,
        dtnasc,
        vigencia,
        nomeplano,
        cns,
        contrato,
        ans,
        segmentacao,
        acomodacao,
        abrangencia
      ]);
}

DtDadosCarteirinhaStruct createDtDadosCarteirinhaStruct({
  String? error,
  int? ccodcli,
  String? nomeempresa,
  int? matricula,
  int? dependente,
  String? nome,
  String? dtnasc,
  String? vigencia,
  String? nomeplano,
  String? cns,
  String? contrato,
  String? ans,
  String? segmentacao,
  String? acomodacao,
  String? abrangencia,
}) =>
    DtDadosCarteirinhaStruct(
      error: error,
      ccodcli: ccodcli,
      nomeempresa: nomeempresa,
      matricula: matricula,
      dependente: dependente,
      nome: nome,
      dtnasc: dtnasc,
      vigencia: vigencia,
      nomeplano: nomeplano,
      cns: cns,
      contrato: contrato,
      ans: ans,
      segmentacao: segmentacao,
      acomodacao: acomodacao,
      abrangencia: abrangencia,
    );
