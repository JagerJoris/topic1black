String[] words = {"Banaan", "Kipje", "Bob"};
String row = join(words, " ");
String rowreverse = new String(reverse(row.toCharArray()));

void setup() {
  size(800, 500);
  textSize(25);
}
void draw() {
  for (int n=0; n <rowreverse.length(); n++) {
    text(rowreverse.charAt(n), 20+n*45, 200);
  }//end for
}
