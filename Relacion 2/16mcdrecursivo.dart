void main(){

  int mcdRecursivo(int a, int b) {
    if(b==0){
      return a;
    } else{
      return mcdRecursivo(b, a % b);
    }
  }

  print(mcdRecursivo(18, 24));
}