
import 'package:learn_dart/io.dart';

void main() {

  var nomes = ["Magnus", "Michael", "Francisca", "Adam", "Eva"];
  
  // Cumprimentar a todos

  for (var nome in nomes) {

    if (nome == "Adam") {

      print("Olá, Jonas...");
    }

    else if (nome == "Eva") {

      print("Olá, Martha...");
    }

    else {

      print("Olá, " + nome + "!");
    }
  }

  // Te cumprimentar

  // Obter seu nome
  var nomeInformado = input("E você? Qual é seu nome? ");
  print("");

  // Verificar se é conhecido
  bool ehConhecido = false;

  for (var nome in nomes) {

    if (nome == nomeInformado) {

      ehConhecido = true;
    }
  }

  // Cumprimentar
  if (ehConhecido) {

    print(nomeInformado + "? Outro de você aqui? Isso já perdendo o controle!");
  }

  else {

    print("Olá, " + nomeInformado + ". Nunca te vi por aqui...");
    
    if (nomeInformado.contains("Tiedemann")) {

      print("Mas sinto que você já me conhece.");
    }    
  
    else if (nomeInformado.length > 10) {

      print("E eu tenho certeza que eu me lembraria desse nome.");
    }
  }

  // Idade

  String textoIdade = input("Qual sua idade? ");
  int? idade = int.tryParse(textoIdade);

  if (idade == null) {

    print("Não entendi. Talvez ainda não saiba falar haha");
  }

  else {

    if (idade < 18) {

      print("Veja se não é um adolecente!");
    }

    else if (idade < 60) {

      print("Temos um adulto aqui!");
    }

    else {

      print("A terceira idade não é mole né?");
    }
  }
}


// ehConhecido
// ehParente