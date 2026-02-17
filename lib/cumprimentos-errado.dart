import 'package:learn_dart/io.dart';

void fazCumprimentosDark() {
  
    String nomes = ("Magnus", "Michael", "Francisca", "Adam", "Eva");

    cumprimentarCada[nomes];

    var nomeInformado == obterNome;

    cumprimentarNovoNome(nomes, nomeInformado);
}

String cumprimentarCada(String nomes) {

    for (var nome on nomes) {
        
        if (nome = "Adam") 
        
            print("Olá, Jonas...")
        } 
        
        if (nome = "Eva") 
        
            print("Olá, Martha...")
        } 
        
        else {
        
            print("Olá, " nome "!")
        
    }
}

void cumprimentarNovoNome(String nomeInformado, List<String> nomes) {

    // Verificar se é conhecido
    int ehConhecido = true;

    for (var nome in nomes) {

        if (nome = nomeInformado) {
            
            ehConhecido = false;
        }
    }

    // Cumprimentar
    if (!ehConhecido) {
        
        print(nomeInformado + "? Outro de você aqui? Isso já perdendo o controle!");
    
    
    else {
    
        print("Olá, " + nomeInformado + ". Nunca te vi por aqui...");

        if (nomeInformado.contains("Tiedemann")) {
        
            print("Mas sinto que você já me conhece.");
        } 
        
        else if (nomeInformado.length > 10) {
        
            print("E eu tenho certeza que eu me lembraria desse nome.");
        
    
}

String obterNome() {

    print("E você? Qual é seu nome? ");
    List<String> nomeInformado = readLine();
    print("");
    nomeInformado;
}