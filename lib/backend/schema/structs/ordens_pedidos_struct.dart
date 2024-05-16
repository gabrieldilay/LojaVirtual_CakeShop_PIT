// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdensPedidosStruct extends BaseStruct {
  OrdensPedidosStruct({
    String? nomeCliente,
    String? pedido,
    double? valor,
    double? quantidade,
    String? endereco,
    String? img,
    DateTime? data,
    double? nPedido,
    String? formaPag,
  })  : _nomeCliente = nomeCliente,
        _pedido = pedido,
        _valor = valor,
        _quantidade = quantidade,
        _endereco = endereco,
        _img = img,
        _data = data,
        _nPedido = nPedido,
        _formaPag = formaPag;

  // "nome_cliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  set nomeCliente(String? val) => _nomeCliente = val;
  bool hasNomeCliente() => _nomeCliente != null;

  // "pedido" field.
  String? _pedido;
  String get pedido => _pedido ?? '';
  set pedido(String? val) => _pedido = val;
  bool hasPedido() => _pedido != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "quantidade" field.
  double? _quantidade;
  double get quantidade => _quantidade ?? 0.0;
  set quantidade(double? val) => _quantidade = val;
  void incrementQuantidade(double amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;
  bool hasEndereco() => _endereco != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;
  bool hasData() => _data != null;

  // "n_pedido" field.
  double? _nPedido;
  double get nPedido => _nPedido ?? 0.0;
  set nPedido(double? val) => _nPedido = val;
  void incrementNPedido(double amount) => _nPedido = nPedido + amount;
  bool hasNPedido() => _nPedido != null;

  // "forma_pag" field.
  String? _formaPag;
  String get formaPag => _formaPag ?? '';
  set formaPag(String? val) => _formaPag = val;
  bool hasFormaPag() => _formaPag != null;

  static OrdensPedidosStruct fromMap(Map<String, dynamic> data) =>
      OrdensPedidosStruct(
        nomeCliente: data['nome_cliente'] as String?,
        pedido: data['pedido'] as String?,
        valor: castToType<double>(data['valor']),
        quantidade: castToType<double>(data['quantidade']),
        endereco: data['endereco'] as String?,
        img: data['img'] as String?,
        data: data['data'] as DateTime?,
        nPedido: castToType<double>(data['n_pedido']),
        formaPag: data['forma_pag'] as String?,
      );

  static OrdensPedidosStruct? maybeFromMap(dynamic data) => data is Map
      ? OrdensPedidosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome_cliente': _nomeCliente,
        'pedido': _pedido,
        'valor': _valor,
        'quantidade': _quantidade,
        'endereco': _endereco,
        'img': _img,
        'data': _data,
        'n_pedido': _nPedido,
        'forma_pag': _formaPag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_cliente': serializeParam(
          _nomeCliente,
          ParamType.String,
        ),
        'pedido': serializeParam(
          _pedido,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.double,
        ),
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'n_pedido': serializeParam(
          _nPedido,
          ParamType.double,
        ),
        'forma_pag': serializeParam(
          _formaPag,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrdensPedidosStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrdensPedidosStruct(
        nomeCliente: deserializeParam(
          data['nome_cliente'],
          ParamType.String,
          false,
        ),
        pedido: deserializeParam(
          data['pedido'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.double,
          false,
        ),
        endereco: deserializeParam(
          data['endereco'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        nPedido: deserializeParam(
          data['n_pedido'],
          ParamType.double,
          false,
        ),
        formaPag: deserializeParam(
          data['forma_pag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrdensPedidosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrdensPedidosStruct &&
        nomeCliente == other.nomeCliente &&
        pedido == other.pedido &&
        valor == other.valor &&
        quantidade == other.quantidade &&
        endereco == other.endereco &&
        img == other.img &&
        data == other.data &&
        nPedido == other.nPedido &&
        formaPag == other.formaPag;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nomeCliente,
        pedido,
        valor,
        quantidade,
        endereco,
        img,
        data,
        nPedido,
        formaPag
      ]);
}

OrdensPedidosStruct createOrdensPedidosStruct({
  String? nomeCliente,
  String? pedido,
  double? valor,
  double? quantidade,
  String? endereco,
  String? img,
  DateTime? data,
  double? nPedido,
  String? formaPag,
}) =>
    OrdensPedidosStruct(
      nomeCliente: nomeCliente,
      pedido: pedido,
      valor: valor,
      quantidade: quantidade,
      endereco: endereco,
      img: img,
      data: data,
      nPedido: nPedido,
      formaPag: formaPag,
    );
