// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtDadosBeneficiariosStruct extends BaseStruct {
  DtDadosBeneficiariosStruct({
    int? matricula,
    int? dependente,
    String? nome,
    String? status,
  })  : _matricula = matricula,
        _dependente = dependente,
        _nome = nome,
        _status = status;

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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static DtDadosBeneficiariosStruct fromMap(Map<String, dynamic> data) =>
      DtDadosBeneficiariosStruct(
        matricula: castToType<int>(data['matricula']),
        dependente: castToType<int>(data['dependente']),
        nome: data['nome'] as String?,
        status: data['status'] as String?,
      );

  static DtDadosBeneficiariosStruct? maybeFromMap(dynamic data) => data is Map
      ? DtDadosBeneficiariosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'matricula': _matricula,
        'dependente': _dependente,
        'nome': _nome,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtDadosBeneficiariosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtDadosBeneficiariosStruct(
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
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtDadosBeneficiariosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtDadosBeneficiariosStruct &&
        matricula == other.matricula &&
        dependente == other.dependente &&
        nome == other.nome &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([matricula, dependente, nome, status]);
}

DtDadosBeneficiariosStruct createDtDadosBeneficiariosStruct({
  int? matricula,
  int? dependente,
  String? nome,
  String? status,
}) =>
    DtDadosBeneficiariosStruct(
      matricula: matricula,
      dependente: dependente,
      nome: nome,
      status: status,
    );
