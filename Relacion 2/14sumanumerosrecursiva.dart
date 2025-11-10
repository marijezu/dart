/*14- Haz una nueva versión del ejercicio 6, esta vez con una función RECURSIVA*/
/*El ejercicio 6 decía: 6- Haz un programa en Dart que contenga una función que calcule la suma de los n
primeros números naturales. La función tendrá un parámetro n y devolverá el valor de la
suma al punto de la llamada*/
void main(){
  int sumaNaturalesRecursiva(int n) {
    if(n==1){
      return 1;
    }else{
      return n + sumaNaturalesRecursiva(n-1);
    }                      
  }
  print(sumaNaturalesRecursiva(10));
}


