//La petite sirène

// slider
float slider_width = 8;
float slider_height = 20;
float sliderx, slidery;
boolean over = false;
boolean locked = false;
float xoff;

//sirene sourir
boolean showimage1 = false;
boolean showimage2 = false;
boolean showimage3 = false;

// reste
boolean titlescreenclicked = false;
PImage fish;
PImage maison;
PImage sacoche;
PImage sirene1;
PImage sirene2;
PImage sirene3;
PImage pixelheart;
int positionFishX = 30;
int positionFishY = 60;
int fishSpeed = 32; //init eve
    
void setup() 
{
  size(500, 500);
  fish = loadImage ("fish.png");
  maison = loadImage("maison.png");
  sacoche = loadImage("sacoche.png");
  sirene1 = loadImage("sirene1.png");
  sirene2 = loadImage("sirene2.png");
  sirene3 = loadImage("sirene3.png");
  pixelheart = loadImage("pixelheart.png");
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

    background (#CCFFF5);
 
     //-----------------------------------------------------------------------------------/
    //  L'écran principale de la petite sirène                                             /
    //------------------------------------------------------------------------------------/
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
    image(sirene3, 68, 49);
    image(sirene2, 68, 49);
    image(sirene1, 68, 49);
    image(pixelheart, 265, 135, 20, 20);
    fill (#7BD5F3);
    strokeWeight(1);
    stroke(#2DA9A2);
    rect (338, 169, 120, 5);
    
    PFont pp;
    pp = createFont("PublicSans.ttf", 100);
    textFont(pp);
    fill(45, 169, 162);
    textSize(11);
    text("HAPPINESS", 298, 170);
    

    if(showimage3) image(sirene3, 68, 49);
    if(showimage2) image(sirene2, 68, 49);
    if(showimage1) image(sirene1, 68, 49);

    //--------------------------------------------------------------------------------------/
    //  Slider                                             /
    //------------------------------------------------------------------------------------/
    
    {
    
    println (sliderx);
  if (dist(mouseX, mouseY, sliderx, slidery) < slider_height) {
    over = true;
  }
 
if (sliderx < 340) {
sliderx = 340;
}

if (sliderx > 448) {
sliderx = 448;
}
 slidery = 161;
 rect(sliderx, slidery, slider_width, slider_height);
  }
 } 
}


void mousePressed() {
   if (over) {
    locked = true;
    xoff = mouseX-sliderx;
  }
}


void mouseDragged() {
  if (locked) {
    sliderx = mouseX-xoff;
    }
    // slider sourire sirene
    if (sliderx > 340 && sliderx < 363) {
  showimage3 = true;
  showimage1 = false;
  showimage2 = false;
   }
if (sliderx > 364 && sliderx < 412) {
  showimage2 = true;
  showimage1 = false;
  showimage3 = false;
   }
if (sliderx > 413 && sliderx < 448) {
  showimage1 = true;
  showimage2 = false;
  showimage3 = false;
   }  
} 


void mouseReleased() 
{
  titlescreenclicked = true;
  locked = false;
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
