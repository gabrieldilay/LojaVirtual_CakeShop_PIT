import '../database.dart';

class PedidosClienteTable extends SupabaseTable<PedidosClienteRow> {
  @override
  String get tableName => 'pedidos_cliente';

  @override
  PedidosClienteRow createRow(Map<String, dynamic> data) =>
      PedidosClienteRow(data);
}

class PedidosClienteRow extends SupabaseDataRow {
  PedidosClienteRow(super.data);

  @override
  SupabaseTable get table => PedidosClienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nCliente => getField<String>('n_cliente');
  set nCliente(String? value) => setField<String>('n_cliente', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get pagamento => getField<String>('pagamento');
  set pagamento(String? value) => setField<String>('pagamento', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get pedido => getField<String>('pedido');
  set pedido(String? value) => setField<String>('pedido', value);

  double? get quantidade => getField<double>('quantidade');
  set quantidade(double? value) => setField<double>('quantidade', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  double? get nPedido => getField<double>('n_pedido');
  set nPedido(double? value) => setField<double>('n_pedido', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);
}
