int[] numbers = new int[499];
int counter=0;

void setup(){
  size(200,200);
  textSize(40);
  textAlign(CENTER);
  for(int n = 0; n<numbers.length;n++){
   numbers[n] = (int)random(0,100);
   if(numbers[n]<=50){
     counter+=1;
   }
  }
}
void draw(){
 text(counter,width/2,height/2); 
}
