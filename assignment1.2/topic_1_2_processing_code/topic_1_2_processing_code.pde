String[] words = {"lepel"};
String row = join(words, " ");
String rowreverse = new String(reverse(row.toCharArray()));
int n;
int counter;
int checksmall = 'e';
int checkbig = 'E';

void setup() {
  size(800, 500);
  textAlign(CENTER);
  counte();
}
void draw() {

  background(0);
  // counte();
  palindrome();
  reversetext();
  printtext();
  text("Amount of E's:"+counter, width/2-150, 50);
}
int palindrome() {

  textSize(40);
  text(row, width/2, height/2-50);

  if (row.equals(rowreverse)) {

    textSize(30);
    text("is a palindrome", width/2, height/2);
  } else {
    textSize(30);
    text("is not a palindrome", width/2, height/2);
  }
  return n;
}
int reversetext() {
  for (int n=0; n <rowreverse.length(); n++) {
    text(rowreverse.charAt(n), 20+n*45, 200);
  }//end for
  return rowreverse.charAt(n);
}

int printtext() {
  for (int n=0; n <row.length(); n++) {
    text(row.charAt(n), 600+n*45, 200);
  }//end for
  return n;
}
int counte() {
  for (int n=0; n <rowreverse.length(); n++) {
    if (rowreverse.charAt(n)==checksmall||rowreverse.charAt(n)==checkbig&&counter<row.length()) {
      counter+=1;
    }
  }//end for
  return counter;
}
