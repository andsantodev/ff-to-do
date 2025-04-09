import '../database.dart';

class CursoToDoTable extends SupabaseTable<CursoToDoRow> {
  @override
  String get tableName => 'curso_to_do';

  @override
  CursoToDoRow createRow(Map<String, dynamic> data) => CursoToDoRow(data);
}

class CursoToDoRow extends SupabaseDataRow {
  CursoToDoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CursoToDoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tarefa => getField<String>('tarefa');
  set tarefa(String? value) => setField<String>('tarefa', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);
}
