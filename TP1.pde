//La petite sirène

boolean titlescreenclicked = false;
PImage fish;
int positionFishX = 30;
int positionFishY = 60;
int fishSpeed = 16;

void setup() 
{
  size(500, 500);
  fish = loadImage ("fish.png");
  frameRate (60);
}

void draw() 
{
  if (titlescreenclicked == false) 
  {
    // L'écran titre de la petite sirène
    noStroke();
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
    text("Eve Desmeules", 250, 380);
  }
  else 
  {
    //--------------------------------------------------------------------------------------/
    //L'écran principale de la petite sirène                                               /
    //------------------------------------------------------------------------------------/
    background (#CCFFF5);
    image(fish, positionFishX, positionFishY);
    fill(#9CC3FA);
    rect(0,16,500,4);
    rect(0,480,500,4);
    fill(#6C88FF);
    rect(0,0,500,16);
    rect(0,484,500,16);
    rect(0,20,500,8);
    rect(0, 472, 500, 8);
    rect(0,30,500,2);
    rect(0,468,500,2);
    rect(0,34,500,2);
    rect(0,464,500,2);
    fill(255);
    circle(140, 340, 160);
    triangle(290, 320, 370, 260, 450, 320);
    quad(290, 320, 325, 410, 415, 410, 450, 320);
  }
}

void mouseReleased() 
{
  titlescreenclicked = true;
}

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
}
