/* please implement your assign1 code in this file. */
  PImage hpbar,fighter,enemy,bg1,bg2,treasure;
  int xt=floor(random(580));
  int yt=floor(random(30,460));
  int xe=floor(random(580));
  int ye=floor(random(30,460));
  int w=floor(random(201));
  int x,x2,y,a,a2;
  
   void setup () {
  size(640,480) ;  // must use this size.
  // your code
  x=0;
  x2=0;
  y=0;
  a=0;
  a2=640;
  
  hpbar=loadImage("img/hp.png");
  fighter=loadImage("img/fighter.png");
  treasure=loadImage("img/treasure.png");
  enemy=loadImage("img/enemy.png");
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");

  }

void draw() {
  // your code
  background(0);
  image(bg2,a2,0);
  image(bg1,a,0);
  if(a2>=640)
  {
    a2=a2*-1;
  }
  if(a>=640)
  {
    a=a*-1;
  }
  a2=a2+5;
  a=a+5;



  rect(5,5,w,25);
  fill(255,0,0);
  image(hpbar,0,0);
  image(fighter,580,240);
  image(enemy,xe,ye);
  xe=xe+3;
  xe=xe%640;
  image(treasure,xt,yt);
  
}
