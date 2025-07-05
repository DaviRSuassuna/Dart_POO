import 'package:meu_app/enum/tipo_notificacao.dart';
import 'package:meu_app/service/implementacao/notificacao_push_notification.dart';
import 'package:meu_app/service/implementacao/notificacao_sms.dart';
import 'package:meu_app/service/implementacao/notificacoa_email.dart';
import 'package:meu_app/service/notificacao_interface.dart';
import 'package:meu_app/classes/class_pessoa.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSms();
        break;
      case TipoNotificacao.PUSH_NOTICATION:
        notificacao = NotificacaoPushNotification();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}