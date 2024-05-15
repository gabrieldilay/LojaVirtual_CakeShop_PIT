// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoStruct extends BaseStruct {
  PedidoStruct({
    String? nomePedido,
    double? preco,
    double? quantidade,
    String? img,
    String? id,
  })  : _nomePedido = nomePedido,
        _preco = preco,
        _quantidade = quantidade,
        _img = img,
        _id = id;

  // "nome_pedido" field.
  String? _nomePedido;
  String get nomePedido => _nomePedido ?? '';
  set nomePedido(String? val) => _nomePedido = val;
  bool hasNomePedido() => _nomePedido != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;
  void incrementPreco(double amount) => _preco = preco + amount;
  bool hasPreco() => _preco != null;

  // "quantidade" field.
  double? _quantidade;
  double get quantidade => _quantidade ?? 0.0;
  set quantidade(double? val) => _quantidade = val;
  void incrementQuantidade(double amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  static PedidoStruct fromMap(Map<String, dynamic> data) => PedidoStruct(
        nomePedido: data['nome_pedido'] as String?,
        preco: castToType<double>(data['preco']),
        quantidade: castToType<double>(data['quantidade']),
        img: data['img'] as String?,
        id: data['id'] as String?,
      );

  static PedidoStruct? maybeFromMap(dynamic data) =>
      data is Map ? PedidoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome_pedido': _nomePedido,
        'preco': _preco,
        'quantidade': _quantidade,
        'img': _img,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_pedido': serializeParam(
          _nomePedido,
          ParamType.String,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.double,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static PedidoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PedidoStruct(
        nomePedido: deserializeParam(
          data['nome_pedido'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.double,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PedidoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidoStruct &&
        nomePedido == other.nomePedido &&
        preco == other.preco &&
        quantidade == other.quantidade &&
        img == other.img &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nomePedido, preco, quantidade, img, id]);
}

PedidoStruct createPedidoStruct({
  String? nomePedido,
  double? preco,
  double? quantidade,
  String? img,
  String? id,
}) =>
    PedidoStruct(
      nomePedido: nomePedido,
      preco: preco,
      quantidade: quantidade,
      img: img,
      id: id,
    );
