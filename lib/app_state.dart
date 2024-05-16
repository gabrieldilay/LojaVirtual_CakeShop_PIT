import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _pedido = prefs
              .getStringList('ff_pedido')
              ?.map((x) {
                try {
                  return PedidoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pedido;
    });
    _safeInit(() {
      _addCarrinho = prefs.getDouble('ff_addCarrinho') ?? _addCarrinho;
    });
    _safeInit(() {
      _soma = prefs.getDouble('ff_soma') ?? _soma;
    });
    _safeInit(() {
      _soma2 = prefs.getDouble('ff_soma2') ?? _soma2;
    });
    _safeInit(() {
      _pedidosFinalizados = prefs
              .getStringList('ff_pedidosFinalizados')
              ?.map((x) {
                try {
                  return OrdensPedidosStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pedidosFinalizados;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<PedidoStruct> _pedido = [];
  List<PedidoStruct> get pedido => _pedido;
  set pedido(List<PedidoStruct> value) {
    _pedido = value;
    prefs.setStringList('ff_pedido', value.map((x) => x.serialize()).toList());
  }

  void addToPedido(PedidoStruct value) {
    _pedido.add(value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void removeFromPedido(PedidoStruct value) {
    _pedido.remove(value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPedido(int index) {
    _pedido.removeAt(index);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void updatePedidoAtIndex(
    int index,
    PedidoStruct Function(PedidoStruct) updateFn,
  ) {
    _pedido[index] = updateFn(_pedido[index]);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPedido(int index, PedidoStruct value) {
    _pedido.insert(index, value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  double _addCarrinho = 0.0;
  double get addCarrinho => _addCarrinho;
  set addCarrinho(double value) {
    _addCarrinho = value;
    prefs.setDouble('ff_addCarrinho', value);
  }

  double _soma = 0.0;
  double get soma => _soma;
  set soma(double value) {
    _soma = value;
    prefs.setDouble('ff_soma', value);
  }

  double _soma2 = 0.0;
  double get soma2 => _soma2;
  set soma2(double value) {
    _soma2 = value;
    prefs.setDouble('ff_soma2', value);
  }

  int _contador = -1;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  List<OrdensPedidosStruct> _pedidosFinalizados = [];
  List<OrdensPedidosStruct> get pedidosFinalizados => _pedidosFinalizados;
  set pedidosFinalizados(List<OrdensPedidosStruct> value) {
    _pedidosFinalizados = value;
    prefs.setStringList(
        'ff_pedidosFinalizados', value.map((x) => x.serialize()).toList());
  }

  void addToPedidosFinalizados(OrdensPedidosStruct value) {
    _pedidosFinalizados.add(value);
    prefs.setStringList('ff_pedidosFinalizados',
        _pedidosFinalizados.map((x) => x.serialize()).toList());
  }

  void removeFromPedidosFinalizados(OrdensPedidosStruct value) {
    _pedidosFinalizados.remove(value);
    prefs.setStringList('ff_pedidosFinalizados',
        _pedidosFinalizados.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPedidosFinalizados(int index) {
    _pedidosFinalizados.removeAt(index);
    prefs.setStringList('ff_pedidosFinalizados',
        _pedidosFinalizados.map((x) => x.serialize()).toList());
  }

  void updatePedidosFinalizadosAtIndex(
    int index,
    OrdensPedidosStruct Function(OrdensPedidosStruct) updateFn,
  ) {
    _pedidosFinalizados[index] = updateFn(_pedidosFinalizados[index]);
    prefs.setStringList('ff_pedidosFinalizados',
        _pedidosFinalizados.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPedidosFinalizados(
      int index, OrdensPedidosStruct value) {
    _pedidosFinalizados.insert(index, value);
    prefs.setStringList('ff_pedidosFinalizados',
        _pedidosFinalizados.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
