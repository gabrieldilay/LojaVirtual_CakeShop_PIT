// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosStruct extends BaseStruct {
  PedidosStruct({
    String? nomeProduto,
    String? img,
    int? quantidade,
    double? precoTotal,
  })  : _nomeProduto = nomeProduto,
        _img = img,
        _quantidade = quantidade,
        _precoTotal = precoTotal;

  // "nome_produto" field.
  String? _nomeProduto;
  String get nomeProduto => _nomeProduto ?? '';
  set nomeProduto(String? val) => _nomeProduto = val;
  bool hasNomeProduto() => _nomeProduto != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;
  void incrementQuantidade(int amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "precoTotal" field.
  double? _precoTotal;
  double get precoTotal => _precoTotal ?? 0.0;
  set precoTotal(double? val) => _precoTotal = val;
  void incrementPrecoTotal(double amount) => _precoTotal = precoTotal + amount;
  bool hasPrecoTotal() => _precoTotal != null;

  static PedidosStruct fromMap(Map<String, dynamic> data) => PedidosStruct(
        nomeProduto: data['nome_produto'] as String?,
        img: data['img'] as String?,
        quantidade: castToType<int>(data['quantidade']),
        precoTotal: castToType<double>(data['precoTotal']),
      );

  static PedidosStruct? maybeFromMap(dynamic data) =>
      data is Map ? PedidosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome_produto': _nomeProduto,
        'img': _img,
        'quantidade': _quantidade,
        'precoTotal': _precoTotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_produto': serializeParam(
          _nomeProduto,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'precoTotal': serializeParam(
          _precoTotal,
          ParamType.double,
        ),
      }.withoutNulls;

  static PedidosStruct fromSerializableMap(Map<String, dynamic> data) =>
      PedidosStruct(
        nomeProduto: deserializeParam(
          data['nome_produto'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        precoTotal: deserializeParam(
          data['precoTotal'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PedidosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidosStruct &&
        nomeProduto == other.nomeProduto &&
        img == other.img &&
        quantidade == other.quantidade &&
        precoTotal == other.precoTotal;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nomeProduto, img, quantidade, precoTotal]);
}

PedidosStruct createPedidosStruct({
  String? nomeProduto,
  String? img,
  int? quantidade,
  double? precoTotal,
}) =>
    PedidosStruct(
      nomeProduto: nomeProduto,
      img: img,
      quantidade: quantidade,
      precoTotal: precoTotal,
    );
