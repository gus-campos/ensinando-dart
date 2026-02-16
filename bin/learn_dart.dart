
import 'package:learn_dart/cumprimentos.dart';
import 'package:learn_dart/io.dart';

const int DURACAO_CICLO = 33;

enum Epoca {
    Ano2052,
    Ano2019,
    Ano1986,
    Ano1953,
    Ano1921,
}

enum Genero {
    Homem,
    Mulher,
    NaoBinario,
    Agenero,
    Outro
}

List<String> nomes = [
    "Martha",
    "Jonas",
    "Hanno",
    "Claudia",
    "Mikkel",
    "Hannah",
    "Elizabeth",
    "Charlotte",
    "Magnus",
    "Franziska"
];

Map<String, String> pseudonimos = {
    "Jonas": "Adam",
    "Martha": "Eva",
    "Hanno": "Noah",
    "Claudia": "Diabo Branco",
    "Mikkel": "Michael",
    "Hannah": "Katharina"
};

Map<String, Genero> generoPersonagens = {
    "Jonas": Genero.Homem,
    "Martha": Genero.Mulher,
    "Hanno": Genero.Homem,
    "Claudia": Genero.Mulher,
    "Mikkel": Genero.Homem,
    "Hannah": Genero.Mulher
};

Map<String, Epoca> epocaPersonagens = {
    "Jonas": Epoca.Ano2019,
    "Martha": Epoca.Ano2019,
    "Hanno": Epoca.Ano1921,
    "Claudia": Epoca.Ano1953,
    "Mikkel": Epoca.Ano2019,
    "Hannah": Epoca.Ano1986
};

void main() {

    for (var nome in nomes) {    
        
        String nomeUsado = nome;

        // Se tiver apelido, usa o apelido
        
        String? pseudonimo = pseudonimos[nome];

        if (pseudonimo != null) {

            nomeUsado = pseudonimo;
        }

        String cumprimentoEpoca = geraComentarioEpoca(nome);

        print("Olá, ${nomeUsado}! " + cumprimentoEpoca);
    }
}

String geraComentarioEpoca(String nome) {

    Epoca? epoca = epocaPersonagens[nome];

    if (epoca != null) {

        if (epoca == Epoca.Ano2052) {
        
            return "Você é de quando a partícula da destruição estava escondida em muros!";
        }

        else if (epoca == Epoca.Ano2019) {

            return "Você é de quando o Mikkel foi levado.";
        }

        else if (epoca == Epoca.Ano1986) {

            return "Você é de quando ele descobriu que eu era o Diabo Branco!";
        }

        else if (epoca == Epoca.Ano1953) {

            return "Você é de quando Hannah se tornou Katharina Nielsen.";
        }

        else if (epoca == Epoca.Ano1921) {

            return "A passagem só seria aberta em 33 anos.";
        }

        throw new Exception("Valor inválido");
    }

    else {

        return "Você é a origem???";
    }
}

void perguntaAno() {


    print("De que ano é você?");

    String input = readLine();
    int anoPartida = int.parse(input);

    int anosDesdePartida = 2019 - anoPartida;

    int resto = anosDesdePartida % DURACAO_CICLO;

    bool viagemPermitida = resto == 0;

    if (viagemPermitida) {
        
        print("Está na hora de voltar pra lá");

    } 
    
    else {

        print(
        "Agora você precisa esperar ${DURACAO_CICLO - resto} anos para voltar",
        );

        print("Mas você tem a partícula de Deus, sim, ou não?");
        String input = readLine();

        // Insistir até responder certo

        while (input != "sim" && input != "não") {
        print("Oi? Não entendi. É sim, ou não?");
        input = readLine();
        }

        // Resposta válida

        if (input == "sim") {
        print("Então você já pode voltar agora");
        } else if (input == "não") {
        print("Então como você veio parar aqui?");
        }
    }
}