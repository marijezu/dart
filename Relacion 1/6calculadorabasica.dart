void main(){
  int numero1 = 7;
  int numero2 = 6;
  String operador = "+";
  int? resultado;

//Para que no salga error si al dividir es entre 0 tengo que indicar esto
  if (numero2 == 0 && (operador == "~/" || operador == "%")) {
    resultado = null;
  }else {
      switch (operador) {
    case "+":
      resultado = numero1 + numero2;
      break;
    case "-":
      resultado = numero1 - numero2;
      break;
    case "*":
      resultado = numero1 * numero2;
      break;
    case "%":
      resultado = numero1 % numero2;
      break;
    case "~/":
      resultado = numero1 ~/ numero2;
      break;
    default:
    //si alguna vez le quieres dar valor null es muy importante ponerle a la variable ?
      resultado = null;
    }
  }

  if(resultado == null){
    print("El operador es desconocido o la operación es inválida");
  }else{
    print("El resultado es $resultado");
  }
}