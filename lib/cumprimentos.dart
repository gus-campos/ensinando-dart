import 'package:learn_dart/io.dart';

void fazCumprimentosDark() {
  
    var nomes = ["Magnus", "Michael", "Francisca", "Adam", "Eva"];

    // Cumprimentar a todos

    cumprimentarGeral(nomes);

    // Te cumprimentar

    print("E você? Qual é seu nome? ");
    var nomeInformado = readLine();
    print("");

    // Cumprimentar
    cumprimentarNovoNome(nomeInformado, nomes);
}

void cumprimentarGeral(List<String> nomes) {

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
}

void cumprimentarNovoNome(String nomeInformado, List<String> nomes) {

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
}
