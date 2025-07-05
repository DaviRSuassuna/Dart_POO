import 'package:meu_app/service/notificacao_interface.dart';
import 'package:meu_app/classes/class_pessoa.dart';

class NotificacaoSms implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando notificação em SMS para: ${pessoa.getNome()}");
  }
}