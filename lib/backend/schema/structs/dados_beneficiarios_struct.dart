// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosBeneficiariosStruct extends BaseStruct {
  DadosBeneficiariosStruct({
    String? error,
    int? matricula,
    int? dep,
    String? nomeBeneficiario,
    String? plano,
    String? empresa,
    String? status,
  })  : _error = error,
        _matricula = matricula,
        _dep = dep,
        _nomeBeneficiario = nomeBeneficiario,
        _plano = plano,
        _empresa = empresa,
        _status = status;

  // "error" field.
  String? _error;
  String get error => _error ?? '';
  set error(String? val) => _error = val;

  bool hasError() => _error != null;

  // "matricula" field.
  int? _matricula;
  int get matricula => _matricula ?? 0;
  set matricula(int? val) => _matricula = val;

  void incrementMatricula(int amount) => matricula = matricula + amount;

  bool hasMatricula() => _matricula != null;

  // "dep" field.
  int? _dep;
  int get dep => _dep ?? 0;
  set dep(int? val) => _dep = val;

  void incrementDep(int amount) => dep = dep + amount;

  bool hasDep() => _dep != null;

  // "nomeBeneficiario" field.
  String? _nomeBeneficiario;
  String get nomeBeneficiario => _nomeBeneficiario ?? '';
  set nomeBeneficiario(String? val) => _nomeBeneficiario = val;

  bool hasNomeBeneficiario() => _nomeBeneficiario != null;

  // "plano" field.
  String? _plano;
  String get plano => _plano ?? '';
  set plano(String? val) => _plano = val;

  bool hasPlano() => _plano != null;

  // "empresa" field.
  String? _empresa;
  String get empresa => _empresa ?? '';
  set empresa(String? val) => _empresa = val;

  bool hasEmpresa() => _empresa != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static DadosBeneficiariosStruct fromMap(Map<String, dynamic> data) =>
      DadosBeneficiariosStruct(
        error: data['error'] as String?,
        matricula: castToType<int>(data['matricula']),
        dep: castToType<int>(data['dep']),
        nomeBeneficiario: data['nomeBeneficiario'] as String?,
        plano: data['plano'] as String?,
        empresa: data['empresa'] as String?,
        status: data['status'] as String?,
      );

  static DadosBeneficiariosStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosBeneficiariosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'error': _error,
        'matricula': _matricula,
        'dep': _dep,
        'nomeBeneficiario': _nomeBeneficiario,
        'plano': _plano,
        'empresa': _empresa,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'error': serializeParam(
          _error,
          ParamType.String,
        ),
        'matricula': serializeParam(
          _matricula,
          ParamType.int,
        ),
        'dep': serializeParam(
          _dep,
          ParamType.int,
        ),
        'nomeBeneficiario': serializeParam(
          _nomeBeneficiario,
          ParamType.String,
        ),
        'plano': serializeParam(
          _plano,
          ParamType.String,
        ),
        'empresa': serializeParam(
          _empresa,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static DadosBeneficiariosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DadosBeneficiariosStruct(
        error: deserializeParam(
          data['error'],
          ParamType.String,
          false,
        ),
        matricula: deserializeParam(
          data['matricula'],
          ParamType.int,
          false,
        ),
        dep: deserializeParam(
          data['dep'],
          ParamType.int,
          false,
        ),
        nomeBeneficiario: deserializeParam(
          data['nomeBeneficiario'],
          ParamType.String,
          false,
        ),
        plano: deserializeParam(
          data['plano'],
          ParamType.String,
          false,
        ),
        empresa: deserializeParam(
          data['empresa'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DadosBeneficiariosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosBeneficiariosStruct &&
        error == other.error &&
        matricula == other.matricula &&
        dep == other.dep &&
        nomeBeneficiario == other.nomeBeneficiario &&
        plano == other.plano &&
        empresa == other.empresa &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([error, matricula, dep, nomeBeneficiario, plano, empresa, status]);
}

DadosBeneficiariosStruct createDadosBeneficiariosStruct({
  String? error,
  int? matricula,
  int? dep,
  String? nomeBeneficiario,
  String? plano,
  String? empresa,
  String? status,
}) =>
    DadosBeneficiariosStruct(
      error: error,
      matricula: matricula,
      dep: dep,
      nomeBeneficiario: nomeBeneficiario,
      plano: plano,
      empresa: empresa,
      status: status,
    );
