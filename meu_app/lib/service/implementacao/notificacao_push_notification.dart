import 'package:meu_app/classes/class_pessoa.dart';
import 'package:meu_app/service/notificacao_interface.dart';

class NotificacaoPushNotification implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando notificação em push para: ${pessoa.getNome()}");
  }
}