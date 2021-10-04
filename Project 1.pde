PImage pawn, pawn2, bullet, background, car;
PVector a2, b1, p1, c1;
float speedX1, speedX2, bspeedX1, bspeedX2, cspeedX1, cspeedX2;

void setup() 
{
  size(1280, 720, P2D);
  background = loadImage("road.jpg");
  car = loadImage("car.png");
  pawn = loadImage("cop.png");
  pawn2 = loadImage("robber.png");
  bullet = loadImage("power.png");
  background.resize(1280,720);
  imageMode(CENTER);
  
  p1 = new PVector(width/2, height/2);
  a2 = new PVector(1100, 515);
  b1 = new PVector(325, 500); // 400,550
  c1 = new PVector (200, 650);
  pawn2.resize(90,90);
  bullet.resize(60,60);
  car.resize(200,100);
  
  speedX1 = 1;
  speedX2 = speedX1 * 0.5;
  
  bspeedX1 = 2;
  bspeedX2 = speedX1 * 0.5;
  
  cspeedX1 = 1;
  cspeedX2 = speedX1 * 0.5;
}

void draw() 
{
  background(0, 127, 255);
  noTint();
  image(background, p1.x, p1.y);
  
  noTint ();
  image ( pawn, mouseX, 500, 110, 90 );
  image( pawn2, a2.x, a2.y);
  image( car, c1.x, c1.y);
  
  c1.x += cspeedX1;
  c1.x += cspeedX2;
  
  if (mousePressed)
  {
    image( bullet, b1.x, b1.y);
    b1.x += bspeedX1;
    b1.x += bspeedX2;
    
  }
  if (b1.x >= a2.x-50)
  {
    bspeedX1=0;
    bspeedX2=0;
    b1.x=1400;
    a2.x=1500;
  }
   if ( c1.x > (1280 + car.width + 25) )
  {
    c1.x = -300;
  }
  }
