String binarynumber="10011";
int decimal;

void setup(){
  size(500,150);
  textAlign(CENTER);
  textSize(30);
   for(int n=0;n<binarynumber.length();n++){
    int power=binarynumber.length()-1;
    println((int(binarynumber.charAt(n))-48)*pow(2,power-n));
    decimal+= (int(binarynumber.charAt(n))-48)*pow(2,power-n);
  }
  
}
void draw(){
  text("Binarynumber:"+binarynumber,170,50);
  text("Decimalnumber:"+decimal,150,100);
 
  }
  

  
