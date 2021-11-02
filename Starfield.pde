class Particle{
  double myX,myY,myAngle;
  int myColor,mySpeed;
  Particle(){
    myX=150;
    myY=-1000000000;
    myAngle= (Math.random()*(2*Math.PI));
    mySpeed=(int)(Math.random()*20);
    myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }

  void move(){
    myX=myX+(Math.cos(myAngle)*mySpeed);
    myY=myY+(Math.sin(myAngle)*mySpeed);
  }
 
  void show(){
    noStroke();
    fill(255,255,255,100);
    image(sparkle, (float)myX,(float)myY,20,20);
    
  }
}//end particle

class tink extends Particle{
  tink(){
    myX=(int)(Math.random()*750);
    myY=(int)(Math.random()*700);
    myAngle= (Math.random()*(2*Math.PI));
    mySpeed=(int)(Math.random()*20);
  }
  void show(){
    image(tinkerbell,(float)myX,(float)myY,100,100);  
  }
}

Particle[]bob;
PImage sparkle;
PImage forest;
PImage tinkerbell;
PImage silvermist;
  void setup(){
   size(870,871);
       forest = loadImage("forestt (2).jpg ");
       tinkerbell = loadImage("tinkk.png");
background(forest);
    bob=new Particle[1000];
    for(int i=0;i<bob.length;i++){
      bob[i]=new Particle();
   
  }
   bob[0]=new tink();
    bob[1]=new tink();
     bob[2]=new tink();
   sparkle = loadImage("sparkleeee.png");

  }
  void draw(){
   background(forest);
    for(int i =0;i<bob.length;i++){
     bob[i].show();
     bob[i].move();
    }
  }
  void mousePressed(){
   for(int i=0;i<bob.length;i++) {
     bob[i].myX=mouseX;
     bob[i].myY=mouseY;
  }
  }


