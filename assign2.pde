PImage bgImg;
PImage soilImg;
PImage soldierImg;
PImage lifeImg;
PImage groundhogIdleImg;
PImage cabbageImg;
PImage groundhogDownImg;
PImage groundhogLeftImg;
PImage groundhogRightImg;
int x=0;
int xPos=320,yPos=80;
void setup() {
	size(640, 480, P2D);
	// Enter Your Setup Code Here
  bgImg=loadImage("img/bg.jpg");  
  soilImg=loadImage("img/soil.png");
  soldierImg=loadImage("img/soldier.png");
  lifeImg=loadImage("img/life.png");
  groundhogIdleImg=loadImage("img/groundhogIdle.png");
  cabbageImg=loadImage("img/cabbage.png");
}

void draw() {
	// Switch Game State
		// Game Start

		// Game Run
    image(bgImg,0,0);
    image(soilImg,0,160);
    image(soldierImg,x,320);
    image(lifeImg,10,10);
    image(lifeImg,80,10);
    strokeWeight(15.0);
    strokeCap(SQUARE);
    stroke(124,204,25);
    line(0,155,640,155);
    image(groundhogIdleImg,xPos,yPos);
    image(cabbageImg,560,160);
    x=x+1;
    if(x>640)
    x=-80;
    if(xPos>=640)
    xPos=560;
    if(xPos<=0)
    xPos=0;
    if(yPos>=480)
    yPos=400;
    if(yPos<=80)
    yPos=80;
		// Game Lose

}

void keyPressed(){
  if (keyPressed){
  if(key =='a'){
    xPos -= 80;
    }
  if(key =='d'){
    xPos += 80;
    }
  if(key =='s'){
    yPos += 80;
    }
  if(key =='w'){
    yPos -= 80;
    }
  }
}
////////
void keyReleased(){
}
