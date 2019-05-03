String[] words = {"Banaan", "Kipje", "Bob"};
String row = join(words, " ");
int counter;
int checksmall = 'e';
int checkbig = 'E';



void setup() {
  size(800, 500);
  textSize(25);
  textAlign(CENTER);
  for (int n=0; n <row.length(); n++) {
        
    text(row.charAt(n), 20+n*45, 200);
    if(row.charAt(n)==checksmall||row.charAt(n)==checkbig){
      counter+=1;
    }
   

  }//end for
  text("E counter:"+counter,width/2,height/2+50);
}
