// ignore_for_file: unnecessary_new

import 'package:meu_app/classes/class_pessoa_fisica.dart';
import 'package:meu_app/classes/class_pessoa_juridica.dart';
import 'package:meu_app/enum/tipo_notificacao.dart';
import 'package:meu_app/service/enviar_notificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica1 = new PessoaFisica("Davi", "Rua 2", "000.111.222-33", tipoNotificacao: TipoNotificacao.PUSH_NOTICATION);
  print(pessoaFisica1);

  var pessoaJuridica1 = new PessoaJuridica("Subway", "Rua 3", "555555/555555", tipoNotificacao: TipoNotificacao.EMAIL);
  print(pessoaJuridica1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica1);
  enviarNotificacao.notificar(pessoaJuridica1);
}
