//La petite sirène

boolean titlescreenclicked = false;
PImage fish;
PImage maison;
PImage sacoche;
int positionFishX = 30;
int positionFishY = 60;
int fishSpeed = 32; //init eve

void setup() 
{
  size(500, 500);
  fish = loadImage ("fish.png");
  maison = loadImage("maison.png");
  sacoche = loadImage("sacoche.png");
  frameRate (60);
} //init eve

void draw() 
{
  if (titlescreenclicked == false) 
  {
    //--------------------------------------------------------------------------------------/
    //  L'écran titre de la petite sirène                                                  /
    //------------------------------------------------------------------------------------/
    
    fill(0);
    rect(0, 0, 500, 500);

    PFont pp;
    pp = createFont("publicpixel.ttf", 128);
    textFont(pp);
    fill(255, 255, 255);
    textSize(50);
    textAlign(CENTER, CENTER);
    text("TP1", 250, 150);
    textSize(25);
    text("La Petite Sirene", 250, 200);

    PFont dc;
    dc = createFont("datcub.ttf", 128);
    textFont(dc);
    fill(255, 255, 255);
    textSize(35);
    text("Par", 250, 290);
    textSize(25);
    text("Elena de Palma", 250, 330);
    text("et", 250, 355);
    text("Eve Desmeules", 250, 380); //init eve

  }
  else 
  {
    //--------------------------------------------------------------------------------------/
    //  L'écran principale de la petite sirène                                             /
    //------------------------------------------------------------------------------------/
    background (#CCFFF5);
    image(fish, positionFishX, positionFishY);
    stroke(#2DA9A2);
    strokeWeight(2);
    arc(60, 263, 12, 14, PI, TWO_PI);
    noStroke();
    fill(#7DD4CB);
    rect(0,16,500,4);
    rect(0,480,500,4);
    fill(#2DA9A2);
    rect(0,0,500,16);
    rect(0,484,500,16);
    rect(0,20,500,8);
    rect(0, 472, 500, 8);
    rect(0,30,500,2);
    rect(0,468,500,2);
    rect(0,34,500,2);
    rect(0,464,500,2);
    fill(255);
    circle(140, 340, 150);
    triangle(290, 320, 370, 260, 450, 320);
    quad(290, 320, 325, 410, 415, 410, 450, 320);
    noFill();
    image(maison, 295, 260);
    image(sacoche, 50, 265); //init eve 
  }
} //init eve

void mouseReleased() 
{
  titlescreenclicked = true;
} //init eve


void keyPressed()
{
 if (keyCode == RIGHT)
 {
   positionFishX = positionFishX+fishSpeed;
 }
 if (keyCode == DOWN)
 {
   positionFishY = positionFishY+fishSpeed;
 }
 if (keyCode == UP)
 {
   positionFishY = positionFishY-fishSpeed;
 }
  if (keyCode == LEFT)
 {
   positionFishX = positionFishX-fishSpeed;
 }
} //init eve
