import '../database.dart';

class PedidosTable extends SupabaseTable<PedidosRow> {
  @override
  String get tableName => 'Pedidos';

  @override
  PedidosRow createRow(Map<String, dynamic> data) => PedidosRow(data);
}

class PedidosRow extends SupabaseDataRow {
  PedidosRow(super.data);

  @override
  SupabaseTable get table => PedidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get numeroPedido => getField<int>('numero_pedido');
  set numeroPedido(int? value) => setField<int>('numero_pedido', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  double? get precoProduto => getField<double>('preco_produto');
  set precoProduto(double? value) => setField<double>('preco_produto', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  int? get quanti => getField<int>('quanti');
  set quanti(int? value) => setField<int>('quanti', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
