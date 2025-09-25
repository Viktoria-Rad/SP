int positionX = 23;
int positionY = 37;
int boxHeight = 45;
int boxWidth = 591;
int flagWidth = 101;
int flagHeight = 45;
int boxSpasing = 9;
int positionTextY = 72;
int positionGroupX;
PFont f;
PImage[] flags = new PImage[16];

String[] fileNames = {
  "UKRAINE.png", "SAUDI ARABIA.png", "EGYPT.png", "URUGUAY.png", "PORTUGAL.png", 
  "SPAIN.png", "MOROCCO.png", "IRAN.png", "FRANCE.png", "AUSTRALIA.png",
  "PERU.png", "DENMARK.png", "ARGENTINA.png", "ICELAND.png", "CROATIA.png",
  "NIGERIA.png"
};    
String[] countryNames = {
  "UKRAINE", "SAUDI ARABIA", "EGYPT", "URUGUAY", "PORTUGAL", 
  "SPAIN", "MOROCCO", "IRAN", "FRANCE", "AUSTRALIA",
  "PERU", "DENMARK", "ARGENTINA", "ICELAND", "CROATIA",
  "NIGERIA"
};    

void setup(){
  size(1240, 534);
  positionGroupX = width/2 + 11;
  f = createFont ("Arial", 32);
  textFont(f);
  textSize(32);
  fill(31, 51, 78);
  rect (0, 0, width, height);
  fill(255);
  rect (width/2, 4, 4, height - 8 );
  
  for (int i = 0; i < flags.length; i++){
    flags[i] = loadImage(fileNames[i]);
  }
} 
  void draw (){
  int index = 0; 
  for (int c = 0; c < 8; c++) {
    int yOffSet = (c <= 3)? c * (boxHeight + boxSpasing)
                          : c * (boxHeight + boxSpasing) + 53;
     fill(255);                     
     rect(positionX, positionY + yOffSet, boxWidth, boxHeight);
     noStroke(); 
     if(c <= 3){
       fill(5, 217, 254);
       text("GROUP A", boxWidth/2-10, positionY - 8);
     } else {
       fill(255, 255, 5);
     }
     text("GROUP B", width * .25-10, height/2 + 30); 
     rect((positionX + boxWidth) - 15, positionY + yOffSet, 15, boxHeight);
     image(flags[index], positionX, positionY + yOffSet, flagWidth, flagHeight);
     fill(31, 51, 78);
     text(countryNames[index], positionX + 128, positionTextY + yOffSet);
     index++;   
  }
  for (int b = 0; b < 8; b++) {
    int yOffSet =  (b <= 3 )? b * (boxHeight + boxSpasing)
                            : b * (boxHeight + boxSpasing) + 53;
      fill(255); 
      rect(positionGroupX, positionY + yOffSet, boxWidth, boxHeight);
      if(b <= 3){
        fill(5, 217, 254);
        text("GROUP C", positionGroupX + boxWidth/2 - 10, positionY - 8);
      } else {
        fill(255, 255, 5);
        text("GROUP D", width * .75 - 10, height/2 + 30); 
      }
      rect((positionGroupX + boxWidth) - 15, positionY + yOffSet, 15, boxHeight);
      image(flags[index], positionGroupX, positionY + yOffSet, flagWidth, flagHeight);
      fill(31, 51, 78);
      text(countryNames[index], positionGroupX + 128, positionTextY + yOffSet);
   index++;
   }
}
