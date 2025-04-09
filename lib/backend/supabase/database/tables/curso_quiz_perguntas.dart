import '../database.dart';

class CursoQuizPerguntasTable extends SupabaseTable<CursoQuizPerguntasRow> {
  @override
  String get tableName => 'curso_quiz_perguntas';

  @override
  CursoQuizPerguntasRow createRow(Map<String, dynamic> data) =>
      CursoQuizPerguntasRow(data);
}

class CursoQuizPerguntasRow extends SupabaseDataRow {
  CursoQuizPerguntasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CursoQuizPerguntasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get numCategoria => getField<int>('num_categoria');
  set numCategoria(int? value) => setField<int>('num_categoria', value);

  int? get numPergunta => getField<int>('num_pergunta');
  set numPergunta(int? value) => setField<int>('num_pergunta', value);

  String? get pergunta => getField<String>('pergunta');
  set pergunta(String? value) => setField<String>('pergunta', value);
}
