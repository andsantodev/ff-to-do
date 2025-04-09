import '../database.dart';

class ViewCriarPerguntasTable extends SupabaseTable<ViewCriarPerguntasRow> {
  @override
  String get tableName => 'view_criar_perguntas';

  @override
  ViewCriarPerguntasRow createRow(Map<String, dynamic> data) =>
      ViewCriarPerguntasRow(data);
}

class ViewCriarPerguntasRow extends SupabaseDataRow {
  ViewCriarPerguntasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewCriarPerguntasTable();

  int? get numCategoria => getField<int>('num_categoria');
  set numCategoria(int? value) => setField<int>('num_categoria', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  int? get numPergunta => getField<int>('num_pergunta');
  set numPergunta(int? value) => setField<int>('num_pergunta', value);

  String? get pergunta => getField<String>('pergunta');
  set pergunta(String? value) => setField<String>('pergunta', value);

  int? get numResposta => getField<int>('num_resposta');
  set numResposta(int? value) => setField<int>('num_resposta', value);

  String? get resposta => getField<String>('resposta');
  set resposta(String? value) => setField<String>('resposta', value);

  bool? get respostaCorreta => getField<bool>('resposta_correta');
  set respostaCorreta(bool? value) => setField<bool>('resposta_correta', value);
}
