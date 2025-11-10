void main(){
  int factorialRecursivo(int n) {  
    if(n==1){
      return 1;
    }else{
      return n * factorialRecursivo(n-1);
    }   
  }

print(factorialRecursivo(5));

}