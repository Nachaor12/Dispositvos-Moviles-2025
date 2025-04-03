import 'package:lab/lab.dart' as lab;

//Ejercicio 3.a
String functionA(String text) {
  //Resive los argumentos
  List<String> textlist = text.split(''); //Se separa la palabra en un array
  List<String> auxlist = []; //Un auxiliar para cambiar la posicion de los caracteres
  String newtext; //Variable para escribir el array
  int n = 1; //Cantidad de iteraciones
  while (n <= text.length) {
    //Condicion de iterar hasta el tamaño de la palabra
    auxlist.add(
      textlist[text.length - n],
    ); //Se añade cada caracter al array aux
    n++;
  }
  newtext = auxlist.join(''); //Se junta la palabra volteada del array
  return newtext;
}

//Ejercicio 3.b
void functionB(String character, int step) {
  //Resive los argumentos
  List<String> aux = character.split(""); //Se separa la palabra en un array
  String char = aux[0]; //Se entrega la primera letra del array
  for (int i = 1; i <= step; i++) {
    if (i != 1) {
      print(
        (" " * (step - i)) + (char) * (i + (i - 1)),
      ); //El cuerpo de la piramide
    } else {
      print((" " * (step - i)) + (char)); //Se escribe la punta de la piramide
    }
  }
}

//Ejercicio 3.c
void functionC(String text) {
  //Resive los argumentos
  List<String> textlist = text.split(""); //Se separa la palabra en un array
  List<String> aux = []; //Un auxiliar para cambiar la posicion de los caracteres
  for (int i = 1; i <= text.length; i++) {
    aux.add(textlist[text.length - i]); //Se añade cada caracter al array aux
  }
  String newtext = aux.join(""); //Se junta la palabra volteada del array
  if (newtext == text) {
    //Se compara si son iguales
    print("$text es palindrome"); //Se da el mensaje de si es polindrome
  } else {
    print("$text no es palidrome");
  }
}





//Ejercicio 3.d
void functionD(List<String> array) {
  //Resive los argumentos
  List<String> newList = []; //Lista sin repeticiones
  String aux; //auxiliar para comparar el caracter repetido
  for (aux in array){ //Se busca el aux en la lista
    if (!newList.contains(aux)){ //Si la lista no la contiene  
      newList.add(aux); //Se agrega la palabra
    }
  }
  aux = newList.join(" "); //Se junta el array para entregarlo como palabra
  print(aux); 
}




void main() {
  String text = "yo vivo solo y yo como papas";
    
  //text = functionA(text);
  //print(text);
  //int i = 5;
  //functionB(text, i);
  //functionC(text);
  List<String> list = text.split(" ");
  functionD(list);
}
