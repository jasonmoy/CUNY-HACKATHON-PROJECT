//Jason Moy
//Disaster Readiness App

PImage logo, map;
boolean press = true;

void setup(){
  size(600,1000);
  background(0);
  imageLoader();
}

void draw(){
  if(press == true){
  image(logo,width/7,height/20);
  }
  noFill();
  buttonCreater();
  buttonPressed();
  goBack();
}
void buttonPressed(){
  if(mousePressed && mouseX<500 && mouseX>300 && mouseY<450 && mouseY>350){//shelterButton
    press = false;
    background(map);
  }
  if(mousePressed && mouseX<300 && mouseX>100 && mouseY<450 && mouseY>350){//friendButton
    background(255);
  }
  if(mousePressed && mouseX<500 && mouseX>300 && mouseY<550 && mouseY>450){//FAQButton
    background(255);
  }
  if(mousePressed && mouseX<300 && mouseX>100 && mouseY<550 && mouseY>450){//weatherButton
    background(255);
  }
}

void buttonCreater(){
  if(press == true){
  stroke(255);
  textSize(28);
  text("Friend's List",110,400);
  rect(300,350,200,100);
  text("Shelter Finder",310,400);
  rect(100,350,200,100);
  text("FAQ",350, 500);
  rect(300,450,200,100);
  text("Weather",130, 500);
  rect(100,450,200,100);
  fill(255,0,0);
  rect(100,550,400,100);
  }
 
}
void goBack(){
  if(mouseX < 100 && mouseY <900 && mousePressed){
    press = true;
    background(0);  
    
  }
}
void imageLoader(){
  logo = loadImage("hurricane.png");
  map = loadImage("map.png");
}