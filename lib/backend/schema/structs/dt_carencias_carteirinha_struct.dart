// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtCarenciasCarteirinhaStruct extends BaseStruct {
  DtCarenciasCarteirinhaStruct({
    String? carencia,
    String? validade,
  })  : _carencia = carencia,
        _validade = validade;

  // "carencia" field.
  String? _carencia;
  String get carencia => _carencia ?? '';
  set carencia(String? val) => _carencia = val;

  bool hasCarencia() => _carencia != null;

  // "validade" field.
  String? _validade;
  String get validade => _validade ?? '';
  set validade(String? val) => _validade = val;

  bool hasValidade() => _validade != null;

  static DtCarenciasCarteirinhaStruct fromMap(Map<String, dynamic> data) =>
      DtCarenciasCarteirinhaStruct(
        carencia: data['carencia'] as String?,
        validade: data['validade'] as String?,
      );

  static DtCarenciasCarteirinhaStruct? maybeFromMap(dynamic data) => data is Map
      ? DtCarenciasCarteirinhaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'carencia': _carencia,
        'validade': _validade,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'carencia': serializeParam(
          _carencia,
          ParamType.String,
        ),
        'validade': serializeParam(
          _validade,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtCarenciasCarteirinhaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtCarenciasCarteirinhaStruct(
        carencia: deserializeParam(
          data['carencia'],
          ParamType.String,
          false,
        ),
        validade: deserializeParam(
          data['validade'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtCarenciasCarteirinhaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtCarenciasCarteirinhaStruct &&
        carencia == other.carencia &&
        validade == other.validade;
  }

  @override
  int get hashCode => const ListEquality().hash([carencia, validade]);
}

DtCarenciasCarteirinhaStruct createDtCarenciasCarteirinhaStruct({
  String? carencia,
  String? validade,
}) =>
    DtCarenciasCarteirinhaStruct(
      carencia: carencia,
      validade: validade,
    );
