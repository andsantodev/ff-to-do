import '../database.dart';

class CursoQuizCategoriasTable extends SupabaseTable<CursoQuizCategoriasRow> {
  @override
  String get tableName => 'curso_quiz_categorias';

  @override
  CursoQuizCategoriasRow createRow(Map<String, dynamic> data) =>
      CursoQuizCategoriasRow(data);
}

class CursoQuizCategoriasRow extends SupabaseDataRow {
  CursoQuizCategoriasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CursoQuizCategoriasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get numCategoria => getField<int>('num_categoria');
  set numCategoria(int? value) => setField<int>('num_categoria', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);
}
