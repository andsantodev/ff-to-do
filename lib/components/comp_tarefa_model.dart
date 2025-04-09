import '/flutter_flow/flutter_flow_util.dart';
import 'comp_tarefa_widget.dart' show CompTarefaWidget;
import 'package:flutter/material.dart';

class CompTarefaModel extends FlutterFlowModel<CompTarefaWidget> {
  ///  Local state fields for this component.

  bool inputEmpty = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
