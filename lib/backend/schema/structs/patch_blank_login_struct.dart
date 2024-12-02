// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PatchBlankLoginStruct extends BaseStruct {
  PatchBlankLoginStruct({
    String? carregaDado,
    String? matricula,
    String? dependente,
    String? tipo,
    String? numeroAns,
    String? nome,
  })  : _carregaDado = carregaDado,
        _matricula = matricula,
        _dependente = dependente,
        _tipo = tipo,
        _numeroAns = numeroAns,
        _nome = nome;

  // "carregaDado" field.
  String? _carregaDado;
  String get carregaDado => _carregaDado ?? '';
  set carregaDado(String? val) => _carregaDado = val;

  bool hasCarregaDado() => _carregaDado != null;

  // "matricula" field.
  String? _matricula;
  String get matricula => _matricula ?? '';
  set matricula(String? val) => _matricula = val;

  bool hasMatricula() => _matricula != null;

  // "dependente" field.
  String? _dependente;
  String get dependente => _dependente ?? '';
  set dependente(String? val) => _dependente = val;

  bool hasDependente() => _dependente != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "numeroAns" field.
  String? _numeroAns;
  String get numeroAns => _numeroAns ?? '';
  set numeroAns(String? val) => _numeroAns = val;

  bool hasNumeroAns() => _numeroAns != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  static PatchBlankLoginStruct fromMap(Map<String, dynamic> data) =>
      PatchBlankLoginStruct(
        carregaDado: data['carregaDado'] as String?,
        matricula: data['matricula'] as String?,
        dependente: data['dependente'] as String?,
        tipo: data['tipo'] as String?,
        numeroAns: data['numeroAns'] as String?,
        nome: data['nome'] as String?,
      );

  static PatchBlankLoginStruct? maybeFromMap(dynamic data) => data is Map
      ? PatchBlankLoginStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'carregaDado': _carregaDado,
        'matricula': _matricula,
        'dependente': _dependente,
        'tipo': _tipo,
        'numeroAns': _numeroAns,
        'nome': _nome,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'carregaDado': serializeParam(
          _carregaDado,
          ParamType.String,
        ),
        'matricula': serializeParam(
          _matricula,
          ParamType.String,
        ),
        'dependente': serializeParam(
          _dependente,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'numeroAns': serializeParam(
          _numeroAns,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
      }.withoutNulls;

  static PatchBlankLoginStruct fromSerializableMap(Map<String, dynamic> data) =>
      PatchBlankLoginStruct(
        carregaDado: deserializeParam(
          data['carregaDado'],
          ParamType.String,
          false,
        ),
        matricula: deserializeParam(
          data['matricula'],
          ParamType.String,
          false,
        ),
        dependente: deserializeParam(
          data['dependente'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        numeroAns: deserializeParam(
          data['numeroAns'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PatchBlankLoginStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PatchBlankLoginStruct &&
        carregaDado == other.carregaDado &&
        matricula == other.matricula &&
        dependente == other.dependente &&
        tipo == other.tipo &&
        numeroAns == other.numeroAns &&
        nome == other.nome;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([carregaDado, matricula, dependente, tipo, numeroAns, nome]);
}

PatchBlankLoginStruct createPatchBlankLoginStruct({
  String? carregaDado,
  String? matricula,
  String? dependente,
  String? tipo,
  String? numeroAns,
  String? nome,
}) =>
    PatchBlankLoginStruct(
      carregaDado: carregaDado,
      matricula: matricula,
      dependente: dependente,
      tipo: tipo,
      numeroAns: numeroAns,
      nome: nome,
    );
