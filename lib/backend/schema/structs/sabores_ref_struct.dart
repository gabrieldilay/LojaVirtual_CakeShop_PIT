// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SaboresRefStruct extends BaseStruct {
  SaboresRefStruct({
    String? nomesabor1,
    String? nomesabor2,
    String? nomesabor3,
    String? nomesabor4,
    double? precosabor1,
    double? precosabor2,
    double? precosabor3,
    double? precosabor4,
  })  : _nomesabor1 = nomesabor1,
        _nomesabor2 = nomesabor2,
        _nomesabor3 = nomesabor3,
        _nomesabor4 = nomesabor4,
        _precosabor1 = precosabor1,
        _precosabor2 = precosabor2,
        _precosabor3 = precosabor3,
        _precosabor4 = precosabor4;

  // "nomesabor1" field.
  String? _nomesabor1;
  String get nomesabor1 => _nomesabor1 ?? '';
  set nomesabor1(String? val) => _nomesabor1 = val;
  bool hasNomesabor1() => _nomesabor1 != null;

  // "nomesabor2" field.
  String? _nomesabor2;
  String get nomesabor2 => _nomesabor2 ?? '';
  set nomesabor2(String? val) => _nomesabor2 = val;
  bool hasNomesabor2() => _nomesabor2 != null;

  // "nomesabor3" field.
  String? _nomesabor3;
  String get nomesabor3 => _nomesabor3 ?? '';
  set nomesabor3(String? val) => _nomesabor3 = val;
  bool hasNomesabor3() => _nomesabor3 != null;

  // "nomesabor4" field.
  String? _nomesabor4;
  String get nomesabor4 => _nomesabor4 ?? '';
  set nomesabor4(String? val) => _nomesabor4 = val;
  bool hasNomesabor4() => _nomesabor4 != null;

  // "precosabor1" field.
  double? _precosabor1;
  double get precosabor1 => _precosabor1 ?? 0.0;
  set precosabor1(double? val) => _precosabor1 = val;
  void incrementPrecosabor1(double amount) =>
      _precosabor1 = precosabor1 + amount;
  bool hasPrecosabor1() => _precosabor1 != null;

  // "precosabor2" field.
  double? _precosabor2;
  double get precosabor2 => _precosabor2 ?? 0.0;
  set precosabor2(double? val) => _precosabor2 = val;
  void incrementPrecosabor2(double amount) =>
      _precosabor2 = precosabor2 + amount;
  bool hasPrecosabor2() => _precosabor2 != null;

  // "precosabor3" field.
  double? _precosabor3;
  double get precosabor3 => _precosabor3 ?? 0.0;
  set precosabor3(double? val) => _precosabor3 = val;
  void incrementPrecosabor3(double amount) =>
      _precosabor3 = precosabor3 + amount;
  bool hasPrecosabor3() => _precosabor3 != null;

  // "precosabor4" field.
  double? _precosabor4;
  double get precosabor4 => _precosabor4 ?? 0.0;
  set precosabor4(double? val) => _precosabor4 = val;
  void incrementPrecosabor4(double amount) =>
      _precosabor4 = precosabor4 + amount;
  bool hasPrecosabor4() => _precosabor4 != null;

  static SaboresRefStruct fromMap(Map<String, dynamic> data) =>
      SaboresRefStruct(
        nomesabor1: data['nomesabor1'] as String?,
        nomesabor2: data['nomesabor2'] as String?,
        nomesabor3: data['nomesabor3'] as String?,
        nomesabor4: data['nomesabor4'] as String?,
        precosabor1: castToType<double>(data['precosabor1']),
        precosabor2: castToType<double>(data['precosabor2']),
        precosabor3: castToType<double>(data['precosabor3']),
        precosabor4: castToType<double>(data['precosabor4']),
      );

  static SaboresRefStruct? maybeFromMap(dynamic data) => data is Map
      ? SaboresRefStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nomesabor1': _nomesabor1,
        'nomesabor2': _nomesabor2,
        'nomesabor3': _nomesabor3,
        'nomesabor4': _nomesabor4,
        'precosabor1': _precosabor1,
        'precosabor2': _precosabor2,
        'precosabor3': _precosabor3,
        'precosabor4': _precosabor4,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nomesabor1': serializeParam(
          _nomesabor1,
          ParamType.String,
        ),
        'nomesabor2': serializeParam(
          _nomesabor2,
          ParamType.String,
        ),
        'nomesabor3': serializeParam(
          _nomesabor3,
          ParamType.String,
        ),
        'nomesabor4': serializeParam(
          _nomesabor4,
          ParamType.String,
        ),
        'precosabor1': serializeParam(
          _precosabor1,
          ParamType.double,
        ),
        'precosabor2': serializeParam(
          _precosabor2,
          ParamType.double,
        ),
        'precosabor3': serializeParam(
          _precosabor3,
          ParamType.double,
        ),
        'precosabor4': serializeParam(
          _precosabor4,
          ParamType.double,
        ),
      }.withoutNulls;

  static SaboresRefStruct fromSerializableMap(Map<String, dynamic> data) =>
      SaboresRefStruct(
        nomesabor1: deserializeParam(
          data['nomesabor1'],
          ParamType.String,
          false,
        ),
        nomesabor2: deserializeParam(
          data['nomesabor2'],
          ParamType.String,
          false,
        ),
        nomesabor3: deserializeParam(
          data['nomesabor3'],
          ParamType.String,
          false,
        ),
        nomesabor4: deserializeParam(
          data['nomesabor4'],
          ParamType.String,
          false,
        ),
        precosabor1: deserializeParam(
          data['precosabor1'],
          ParamType.double,
          false,
        ),
        precosabor2: deserializeParam(
          data['precosabor2'],
          ParamType.double,
          false,
        ),
        precosabor3: deserializeParam(
          data['precosabor3'],
          ParamType.double,
          false,
        ),
        precosabor4: deserializeParam(
          data['precosabor4'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'SaboresRefStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SaboresRefStruct &&
        nomesabor1 == other.nomesabor1 &&
        nomesabor2 == other.nomesabor2 &&
        nomesabor3 == other.nomesabor3 &&
        nomesabor4 == other.nomesabor4 &&
        precosabor1 == other.precosabor1 &&
        precosabor2 == other.precosabor2 &&
        precosabor3 == other.precosabor3 &&
        precosabor4 == other.precosabor4;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nomesabor1,
        nomesabor2,
        nomesabor3,
        nomesabor4,
        precosabor1,
        precosabor2,
        precosabor3,
        precosabor4
      ]);
}

SaboresRefStruct createSaboresRefStruct({
  String? nomesabor1,
  String? nomesabor2,
  String? nomesabor3,
  String? nomesabor4,
  double? precosabor1,
  double? precosabor2,
  double? precosabor3,
  double? precosabor4,
}) =>
    SaboresRefStruct(
      nomesabor1: nomesabor1,
      nomesabor2: nomesabor2,
      nomesabor3: nomesabor3,
      nomesabor4: nomesabor4,
      precosabor1: precosabor1,
      precosabor2: precosabor2,
      precosabor3: precosabor3,
      precosabor4: precosabor4,
    );
