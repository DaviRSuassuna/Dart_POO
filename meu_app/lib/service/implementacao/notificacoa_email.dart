import 'package:meu_app/service/notificacao_interface.dart';
import 'package:meu_app/classes/class_pessoa.dart';

class NotificacaoEmail implements NotificacaoInterface{
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando notificação em email para: ${pessoa.getNome()}");
  }
  
}