import 'package:meuprimeiroapp/model/tarefa.dart';

class TarefaRepository{

  final List<Tarefa> _tarefas = [];

  Future<void> adicionar(Tarefa tarefa) async {
    await Future.delayed(const Duration(milliseconds: 200));
    _tarefas.add(tarefa);
  }

  Future<void> alterar(String id, bool concluido) async{
    await Future.delayed(const Duration(milliseconds: 200));
    _tarefas.where((tarefa) => tarefa.id == id)
      .first.concluido = concluido;
  }

  Future<List<Tarefa>> listarTarefas() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return _tarefas;
  }

    Future<List<Tarefa>> listarNaoConcluidas() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return _tarefas.where((tarefa) => !tarefa.concluido).toList();
  }

    Future<void> remover(String id) async{
    await Future.delayed(const Duration(milliseconds: 200));
    _tarefas.remove(_tarefas.where((tarefa) => tarefa.id == id).first);
  }
}