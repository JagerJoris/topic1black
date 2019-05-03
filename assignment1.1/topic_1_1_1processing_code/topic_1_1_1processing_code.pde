String[] words = {"Hond","Kipje","Bob"};
String row = join(words, " ");
void setup(){
  size(800,500);
textSize(25);
}
void draw(){
      for (int n=0; n <row.length(); n++) {
        text(row.charAt(n), 20+n*45, 200);
      }//end for
 
}
