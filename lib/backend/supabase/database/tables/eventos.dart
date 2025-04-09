import '../database.dart';

class EventosTable extends SupabaseTable<EventosRow> {
  @override
  String get tableName => 'eventos';

  @override
  EventosRow createRow(Map<String, dynamic> data) => EventosRow(data);
}

class EventosRow extends SupabaseDataRow {
  EventosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get imagemBanner => getField<String>('imagem_banner');
  set imagemBanner(String? value) => setField<String>('imagem_banner', value);

  String? get nomeEvento => getField<String>('nome_evento');
  set nomeEvento(String? value) => setField<String>('nome_evento', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  PostgresTime? get horario => getField<PostgresTime>('horario');
  set horario(PostgresTime? value) => setField<PostgresTime>('horario', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  bool? get acessibilidade => getField<bool>('acessibilidade');
  set acessibilidade(bool? value) => setField<bool>('acessibilidade', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  dynamic get estilo => getField<dynamic>('estilo');
  set estilo(dynamic value) => setField<dynamic>('estilo', value);

  String? get nomeLocal => getField<String>('nome_local');
  set nomeLocal(String? value) => setField<String>('nome_local', value);

  String? get tipoEvento => getField<String>('tipo_evento');
  set tipoEvento(String? value) => setField<String>('tipo_evento', value);

  bool? get destaque => getField<bool>('destaque');
  set destaque(bool? value) => setField<bool>('destaque', value);
}
