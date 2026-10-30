//Este arquivo define o formato de cada anotação
// A class não desenha telas e não salva dados no dispositivo

class Nota {
 //final indica que o atributo não sera alterado após a criação
  final String id; // identificador
  final String titulo; //texto curto exibido na lista
  final String conteudo; //corpo completo da anotação

  //Construtor que recebe os valores usados para criação da nota
  const Nota({
    required this.id,
    required this.titulo,
    required this.conteudo});

   //Map relaciona cada chave ao seu valor.
   //dynamic permite valores de diferentes tipos no mapa.
   //Converte para Map facilita transformar o objeto em JSON.
    Map<String, dynamic> toMap() {
     return{
      'id': id, 'titulo':titulo,
      'conteudo': conteudo};
    }
    
    //factory permite cria uma nota usando dados já existentes.
    //map['id'] 
    factory Nota.fromMap(Map<String,dynamic> map) {
      return Nota(
        id: map['id'] as String,
        titulo: map['titulo'] as String,
        conteudo: map['conteudo'] as String,
      );
    }
}