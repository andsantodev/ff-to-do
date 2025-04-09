import '../database.dart';

class CursoQuizRespostasTable extends SupabaseTable<CursoQuizRespostasRow> {
  @override
  String get tableName => 'curso_quiz_respostas';

  @override
  CursoQuizRespostasRow createRow(Map<String, dynamic> data) =>
      CursoQuizRespostasRow(data);
}

class CursoQuizRespostasRow extends SupabaseDataRow {
  CursoQuizRespostasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CursoQuizRespostasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get numPergunta => getField<int>('num_pergunta');
  set numPergunta(int? value) => setField<int>('num_pergunta', value);

  int? get numResposta => getField<int>('num_resposta');
  set numResposta(int? value) => setField<int>('num_resposta', value);

  String? get resposta => getField<String>('resposta');
  set resposta(String? value) => setField<String>('resposta', value);

  bool? get respostaCorreta => getField<bool>('resposta_correta');
  set respostaCorreta(bool? value) => setField<bool>('resposta_correta', value);
}
