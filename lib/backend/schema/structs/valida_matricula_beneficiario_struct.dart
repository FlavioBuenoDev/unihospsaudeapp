// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ValidaMatriculaBeneficiarioStruct extends BaseStruct {
  ValidaMatriculaBeneficiarioStruct({
    String? error,
    String? carregaDado,
    String? nomeTitular,
    String? nomeMae,
  })  : _error = error,
        _carregaDado = carregaDado,
        _nomeTitular = nomeTitular,
        _nomeMae = nomeMae;

  // "error" field.
  String? _error;
  String get error => _error ?? '';
  set error(String? val) => _error = val;

  bool hasError() => _error != null;

  // "carregaDado" field.
  String? _carregaDado;
  String get carregaDado => _carregaDado ?? '';
  set carregaDado(String? val) => _carregaDado = val;

  bool hasCarregaDado() => _carregaDado != null;

  // "nomeTitular" field.
  String? _nomeTitular;
  String get nomeTitular => _nomeTitular ?? '';
  set nomeTitular(String? val) => _nomeTitular = val;

  bool hasNomeTitular() => _nomeTitular != null;

  // "nomeMae" field.
  String? _nomeMae;
  String get nomeMae => _nomeMae ?? '';
  set nomeMae(String? val) => _nomeMae = val;

  bool hasNomeMae() => _nomeMae != null;

  static ValidaMatriculaBeneficiarioStruct fromMap(Map<String, dynamic> data) =>
      ValidaMatriculaBeneficiarioStruct(
        error: data['error'] as String?,
        carregaDado: data['carregaDado'] as String?,
        nomeTitular: data['nomeTitular'] as String?,
        nomeMae: data['nomeMae'] as String?,
      );

  static ValidaMatriculaBeneficiarioStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ValidaMatriculaBeneficiarioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'error': _error,
        'carregaDado': _carregaDado,
        'nomeTitular': _nomeTitular,
        'nomeMae': _nomeMae,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'error': serializeParam(
          _error,
          ParamType.String,
        ),
        'carregaDado': serializeParam(
          _carregaDado,
          ParamType.String,
        ),
        'nomeTitular': serializeParam(
          _nomeTitular,
          ParamType.String,
        ),
        'nomeMae': serializeParam(
          _nomeMae,
          ParamType.String,
        ),
      }.withoutNulls;

  static ValidaMatriculaBeneficiarioStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ValidaMatriculaBeneficiarioStruct(
        error: deserializeParam(
          data['error'],
          ParamType.String,
          false,
        ),
        carregaDado: deserializeParam(
          data['carregaDado'],
          ParamType.String,
          false,
        ),
        nomeTitular: deserializeParam(
          data['nomeTitular'],
          ParamType.String,
          false,
        ),
        nomeMae: deserializeParam(
          data['nomeMae'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ValidaMatriculaBeneficiarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ValidaMatriculaBeneficiarioStruct &&
        error == other.error &&
        carregaDado == other.carregaDado &&
        nomeTitular == other.nomeTitular &&
        nomeMae == other.nomeMae;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([error, carregaDado, nomeTitular, nomeMae]);
}

ValidaMatriculaBeneficiarioStruct createValidaMatriculaBeneficiarioStruct({
  String? error,
  String? carregaDado,
  String? nomeTitular,
  String? nomeMae,
}) =>
    ValidaMatriculaBeneficiarioStruct(
      error: error,
      carregaDado: carregaDado,
      nomeTitular: nomeTitular,
      nomeMae: nomeMae,
    );
