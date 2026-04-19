
import 'package:learn_dart/io.dart';

void main() {



    // pense na ordem alfabética
    // observe a lista de nomes
    // busque um nome que comece com a primeira letra do alfabeto
    // se tiver, coloque na primeira posição,

    // se não tiver, passe para a próxima letra, 
    // repita até ter uma palavra que se inicie com alguma letra
    // quando encontrar a palavra que comece com alguma letra, coloque na posição e repita o processo
    // se tiver 2 palavras com a mesma letra inicial, identificar a segunda, qual vem primeiro e assim classificar

    // Desafio:
    // [X] - Fazer a lista do alfabeto
    // [X] - Fazer a lista de nomes
    // [X] - Passar por cada nome
    // [X] - Verificar se nome começa com a primeira letra
    //      [X] - Obter a primeira letra do nome
    //      [X] - Verificar se a primeira letra do nome e do alfabeto são a mesma
   // [ ] - Colocar nome na primeira posição dos ordenados

    List<String> alfabeto = [
        "A", "B", "C", "D", "E", "F", 
        "G", "H", "I", "J", "K", "L", 
        "M", "N", "O", "P", "Q", "R", 
        "S", "T", "U", "V", "W", "X", 
        "Y", "Z"
    ];

    List<String> nomes = ["Márcia", "Alice", "Pedro", "Tomás", "Téo", "Roberta", "Diego", "Carla"];

    var primeiraLetraAlfabeto = alfabeto[0];

    for (var nome in nomes) {
        
        var primeiraLetraNome = nome[0];
     
        if (primeiraLetraAlfabeto == primeiraLetraNome) {

            print(nome);
        }
    }
}








void converterTemperaturas() {
   
    print("Informe a temperatura com escala");

    String entrada = readLine();

    // "58 F" -> ["58", "F"]
    // "58" -> ["58"] -> length 1

    List<String> partes = entrada.split(" ");

    if (partes.length < 2) {

        print("Favor inserir uma escala");
        return;
    }

    String temperatura = partes[0];
    String escala = partes[1];

    double temp = double.parse(temperatura);

    if (escala.contains("F")) {

        double tempC = (temp - 32)/9*5;

        double tempK = tempC + 273;

        print("Isso é o mesmo que ${tempC.toStringAsFixed(2)} °C e ${tempK.toStringAsFixed(2)} K");
    }

    else if (escala.contains("C")) {

        double tempF = 9*temp/5+32;

        double tempK = temp + 273;

        print("Isso é o mesmo que ${tempF.toStringAsFixed(2)} °F e ${tempK.toStringAsFixed(2)} K");
    }

    else if (escala.contains("K")) {

        double tempC = temp - 273;

        double tempF = 9*tempC/5+32;

        print("Isso é o mesmo que ${tempC.toStringAsFixed(2)} °C e ${tempF.toStringAsFixed(2)} °F");
    }

    else {

        print("Informe uma escala válida");
    }
}

void inputEhPar() {

    print("Digite um número");

    String numeroInformado = readLine();
    int numero = int.parse(numeroInformado);

    bool seEhImpar = numero % 2 == 1;

    if (seEhImpar) {

        print("Esse é um número ímpar");
    }

    else {

        print("Esse é um número par");
    }
}

void learn() {
    print("aprendendo");
}

void exemplo() {



    // print("Digite uma palavra");

    // String palavra = readLine();

    //////////////////////////////////////////////////////////////////////////

    // // Inicialização
    // int contagem = 0;

    // // Condição
    // while (contagem <= 10) {

    //     // Mais um foi contado
    //     contagem = contagem + 1;

    //     print("Foram contados ${contagem} objetos ");
    // }

    //////////////////////////////////////////////////////////////////////////
    
    // print("Digite uma palavra");

    // String palavra = readLine();
    
    // // Obs: O for é como se fosse um while com seções agrupadas

    // String palavraImpar = "";

    // for (
    //     int indice1 = 0;        
    //     indice1 < palavra.length;                            
    //     indice1 = indice1 + 2                    
    // ) {

    //     String letra1 = palavra[indice1];
    //     palavraImpar = palavraImpar + letra1;
        
    //     // print("Índice Um: ${indice1}");

    //     // for (
    //     //     int indice2 = palavra.length - 1;
    //     //     indice2 >= 0;
    //     //     indice2 = indice2 -1
    //     // ) {

    //     //     // String letra2 = palavra[indice2];

    //     //     print("Índice Dois: ${indice2}");

    //     //     if (indice1 + indice2 == 2) {
    //     //         print("Um com Dois deu ${indice1 + indice2}");
    //     //     }
    //     // }
    // }

    // print(palavraImpar);
}

    // List<String> nomesOrdenados = [];

    // for (var letra in alfabeto) {

    //     var nomesComMesmaLetra = [];

    //     for (var nome in nomes) {

    //         var primeiraLetraNome = nome[0];

    //         if (primeiraLetraNome == letra) {

    //             nomesComMesmaLetra.add(nome);
    //         }
    //     }

    //     if (nomesComMesmaLetra.length > 0) {

    //         if (nomesComMesmaLetra.length == 1) {
            
    //             var nomeUnico = nomesComMesmaLetra[0];
    //             nomesOrdenados.add(nomeUnico);
    //             print("${nomeUnico} começa com ${letra}");
    //         }

    //         else {

    //             print("${nomesComMesmaLetra} começam com ${letra}");
                
    //             // ordenar pela segunda letra

                
    //         }
    //     }
    // }

    // print(nomesOrdenados);