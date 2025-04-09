import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'comp_tarefa_model.dart';
export 'comp_tarefa_model.dart';

class CompTarefaWidget extends StatefulWidget {
  const CompTarefaWidget({
    super.key,
    required this.data,
    required this.editar,
    this.idEditarTarefa,
    this.tarefa,
  });

  final DateTime? data;
  final bool? editar;
  final int? idEditarTarefa;
  final String? tarefa;

  @override
  State<CompTarefaWidget> createState() => _CompTarefaWidgetState();
}

class _CompTarefaWidgetState extends State<CompTarefaWidget> {
  late CompTarefaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompTarefaModel());

    _model.textController ??=
        TextEditingController(text: widget.editar! ? widget.tarefa : '');
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260.0,
      constraints: BoxConstraints(
        maxWidth: 500.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 100.0,
              height: 8.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.editar! ? 'Editar tarefa' : 'Nova tarefa',
                '[tarefa]',
              ),
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Inter Tight',
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: false,
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Tarefa...',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    maxLines: 2,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                if (_model.inputEmpty)
                  Text(
                    'Escreva uma tarefa',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Inter Tight',
                          color: FlutterFlowTheme.of(context).error,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
              ].divide(SizedBox(height: 8.0)),
            ),
            FFButtonWidget(
              onPressed: () async {
                if (_model.textController.text == '') {
                  _model.inputEmpty = true;
                  safeSetState(() {});
                  return;
                } else {
                  _model.inputEmpty = false;
                  safeSetState(() {});
                  if (widget.editar!) {
                    await CursoToDoTable().update(
                      data: {
                        'tarefa': _model.textController.text,
                      },
                      matchingRows: (rows) => rows.eqOrNull(
                        'id',
                        widget.idEditarTarefa,
                      ),
                    );
                  } else {
                    await CursoToDoTable().insert({
                      'tarefa': _model.textController.text,
                      'data': supaSerialize<DateTime>(widget.data),
                    });
                  }

                  Navigator.pop(context);
                }
              },
              text: valueOrDefault<String>(
                widget.editar! ? 'Editar tarefa' : 'Adicionar tarefa',
                '[tarefa]',
              ),
              options: FFButtonOptions(
                width: double.infinity,
                height: 48.0,
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter Tight',
                      color: Colors.white,
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
