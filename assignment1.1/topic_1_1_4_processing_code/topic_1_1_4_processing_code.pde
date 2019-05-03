String[] words = {"lepel"};
String row = join(words, " ");
String rowreverse = new String(reverse(row.toCharArray()));




void setup() {
  size(800, 500);
  textAlign(CENTER);
  }
void draw(){
  textSize(40);
  text(row, width/2, height/2-50);

  if (row.equals(rowreverse)) {

    textSize(30);
    text("is a palindrome", width/2, height/2);
  } else {
    textSize(30);
    text("is not a palindrome", width/2, height/2);
  }
}
