
import 'package:learn_dart/io.dart';

const int DURACAO_CICLO = 33;

enum 
Epoca 
{
De1921, De1953,De1986,
De2019,
    De2052,
}

enum Genero 
{ Homem, Mulher, 
NaoBinario,
    Agenero, Fluido,
Outro
}

List<String> 
nomes 
= [
    "Martha", "Jonas", "Hanno", "Claudia",
    "Mikkel", 

    "Hannah",
    "Elizabeth", "Charlotte", "Magnus", 
    "Franziska" ];

Map<String, String> pseudonimos = {
    "Jonas": 
    "Adam",
    "Martha": 
    "Eva",
    "Hanno": 
    "Noah",
    "Claudia": 
    "Diabo Branco",
    "Mikkel": 
    "Michael",
    "Hannah": 
    "Katharina"
};

Map<String, Genero> generoPersonagens = {
    "Jonas": 
 Genero.Homem,
    "Martha": 
   Genero.Mulher,
    "Hanno"
 : Genero.Homem,
   "Claudia"
    : Genero.Mulher,
"Mikkel": Genero.Homem,
    "Hannah": Genero.Mulher
};

Map<String, Epoca> epocaPersonagens = {
    "Jonas": 
    Epoca.
De2019
,
"Martha": 
Epoca.
    De2019
    ,
    "Hanno": 
    Epoca.
    De1921
        ,
        "Claudia": 
    Epoca.
De1953
,
"Mikkel": 
Epoca.
    De2019
,
"Hannah": 
Epoca.
    De1986

};

void fazComentarios() {

    for (
        var nome 
    in 
    nomes) {    
        
        String nomeUsado 
        = nome;
            String? pseudonimo 
        = pseudonimos[nome]; if (pseudonimo != null) 
    {nomeUsado = 
    pseudonimo;}
    String 
        cumprimentoEpoca = geraComentarioEpoca(nome);
    print(
            "Olá, ${nomeUsado}! " 
        + cumprimentoEpoca);
    }
}

String geraComentarioEpoca(String nome) {

    Epoca? epoca = epocaPersonagens[nome];

    if (epoca != null) {

            if (epoca == Epoca.De2052) 
        return "Você é de quando a partícula da destruição estava escondida em muros!";
        else if (
            epoca 
        == 
            Epoca.De2019) 
    return "Você é de quando o Mikkel foi levado.";
        else if (epoca == Epoca.
        De1986)
    return "Você é de quando ele descobriu que eu era o Diabo Branco!";
        else if (epoca == Epoca.De1953) return "Você é de quando Hannah se tornou Katharina Nielsen.";
            else if 
                (epoca == 
                Epoca.
                De1921)
        return "A passagem só seria aberta em 33 anos."; throw new Exception("Valor inválido");
    }

    else {

        return "Você é a origem???";
    }
}

void fazComentarioViagem() {
    print("De que ano é você?");
    String input = readLine(); int anoPartida = int.parse(input); int anosDesdePartida = 2019 
    - anoPartida;
    int resto = anosDesdePartida % DURACAO_CICLO; bool viagemPermitida = resto == 0;
    if (viagemPermitida) print("Está na hora de voltar pra lá");
    else
    {print("Agora você precisa esperar ${DURACAO_CICLO - resto} anos para voltar");
    print("Mas você tem a partícula de Deus, sim, ou não?");
    String input 
= readLine();
        while (input != "sim" && input != "não") {
    print("Oi? Não entendi. É sim, ou não?");
    input = readLine();
        }
        if (input == "sim") print("Então você já pode voltar agora");
        else if (input == "não") 
        print("Então como você veio parar aqui?"); }}