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
    _safeInit(() {
      _numeroCarrinho = prefs.getInt('ff_numeroCarrinho') ?? _numeroCarrinho;
    });
    _safeInit(() {
      _pedidosCar = prefs
              .getStringList('ff_pedidosCar')
              ?.map((x) {
                try {
                  return PedidosStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pedidosCar;
    });
    _safeInit(() {
      _precoTotal = prefs.getDouble('ff_precoTotal') ?? _precoTotal;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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

  String _menucondicao = 'Caixas';
  String get menucondicao => _menucondicao;
  set menucondicao(String value) {
    _menucondicao = value;
  }

  int _quantidade = 1;
  int get quantidade => _quantidade;
  set quantidade(int value) {
    _quantidade = value;
  }

  SaboresRefStruct _sabores = SaboresRefStruct.fromSerializableMap(jsonDecode(
      '{\"nomesabor1\":\"nome\",\"nomesabor2\":\"nome\",\"nomesabor3\":\"nome\",\"nomesabor4\":\"nome\",\"precosabor1\":\"0.0\",\"precosabor2\":\"0.0\",\"precosabor3\":\"0.0\",\"precosabor4\":\"0.0\"}'));
  SaboresRefStruct get sabores => _sabores;
  set sabores(SaboresRefStruct value) {
    _sabores = value;
  }

  void updateSaboresStruct(Function(SaboresRefStruct) updateFn) {
    updateFn(_sabores);
  }

  int _condicaoGeral = 0;
  int get condicaoGeral => _condicaoGeral;
  set condicaoGeral(int value) {
    _condicaoGeral = value;
  }

  int _numeroCarrinho = 0;
  int get numeroCarrinho => _numeroCarrinho;
  set numeroCarrinho(int value) {
    _numeroCarrinho = value;
    prefs.setInt('ff_numeroCarrinho', value);
  }

  List<PedidosStruct> _pedidosCar = [];
  List<PedidosStruct> get pedidosCar => _pedidosCar;
  set pedidosCar(List<PedidosStruct> value) {
    _pedidosCar = value;
    prefs.setStringList(
        'ff_pedidosCar', value.map((x) => x.serialize()).toList());
  }

  void addToPedidosCar(PedidosStruct value) {
    _pedidosCar.add(value);
    prefs.setStringList(
        'ff_pedidosCar', _pedidosCar.map((x) => x.serialize()).toList());
  }

  void removeFromPedidosCar(PedidosStruct value) {
    _pedidosCar.remove(value);
    prefs.setStringList(
        'ff_pedidosCar', _pedidosCar.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPedidosCar(int index) {
    _pedidosCar.removeAt(index);
    prefs.setStringList(
        'ff_pedidosCar', _pedidosCar.map((x) => x.serialize()).toList());
  }

  void updatePedidosCarAtIndex(
    int index,
    PedidosStruct Function(PedidosStruct) updateFn,
  ) {
    _pedidosCar[index] = updateFn(_pedidosCar[index]);
    prefs.setStringList(
        'ff_pedidosCar', _pedidosCar.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPedidosCar(int index, PedidosStruct value) {
    _pedidosCar.insert(index, value);
    prefs.setStringList(
        'ff_pedidosCar', _pedidosCar.map((x) => x.serialize()).toList());
  }

  double _precoTotal = 0.0;
  double get precoTotal => _precoTotal;
  set precoTotal(double value) {
    _precoTotal = value;
    prefs.setDouble('ff_precoTotal', value);
  }

  EnderecosStruct _enderecoRef = EnderecosStruct();
  EnderecosStruct get enderecoRef => _enderecoRef;
  set enderecoRef(EnderecosStruct value) {
    _enderecoRef = value;
  }

  void updateEnderecoRefStruct(Function(EnderecosStruct) updateFn) {
    updateFn(_enderecoRef);
  }

  String _statusPAG = 'Nenhum';
  String get statusPAG => _statusPAG;
  set statusPAG(String value) {
    _statusPAG = value;
  }

  PixPagStruct _pagPixRef = PixPagStruct();
  PixPagStruct get pagPixRef => _pagPixRef;
  set pagPixRef(PixPagStruct value) {
    _pagPixRef = value;
  }

  void updatePagPixRefStruct(Function(PixPagStruct) updateFn) {
    updateFn(_pagPixRef);
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
