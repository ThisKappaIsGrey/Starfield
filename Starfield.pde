//your code here
ArrayList <Particle> jack;
void setup()
{
	//your code here
  size(600, 600);
  jack = new ArrayList<Particle>();
  for (int i = 0; i < 100; i++) { 
  if(i % 2 == 0){  
  jack.add(new NormalParticle());	
   }else if(i % 3 == 0){
   	jack.add(new OddballParticle());
   }else{
   	jack.add(new JumboParticle());
   }
  }
}
void draw()
{
	//your code here
    background(0);
   for (int i = 0; i < jack.size(); i++) { 
   Particle jil = jack.get(i);
  	jil.move();
  	jil.show();
   } 

}
void mousePressed(){
for (int i = 0; i < 50; i++) { 
 if(i % 2 == 0){  
  jack.add(new NormalParticle());	
   }else if(i % 3 == 0){
   	jack.add(new OddballParticle());
   }else{
   	jack.add(new JumboParticle());
   }
  }
}
class NormalParticle implements Particle
{
double dX, dY, dSpeed, dTheta;
int colour;
NormalParticle(){
  dX = mouseX;
  dY = mouseY;
  dSpeed = Math.random() * 5;
  dTheta = (Math.random() * 2) * Math.PI;
  colour = color((int)(Math.random() * 300), 0, (int)(Math.random() * 255));
}
public void move(){
  dX += Math.cos(dTheta) * dSpeed;
  dY += Math.sin(dTheta) * dSpeed;
}
public void show(){
	fill(colour);
  ellipse((int)dX, (int)dY, 10, 10);
}
}
interface Particle
{
  public void move();
  public void show();
}
class OddballParticle implements Particle//uses an interface
{
double tX, tY, tSpeed, tTheta;
int coloure;
OddballParticle() {
 tX = Math.random() * 600;
 tY = Math.random() * 600;
 tSpeed = Math.random() * 5;
 tTheta = Math.random() * 2 * Math.PI;
 coloure = color((int)(Math.random() * 255), 0, (int)(Math.random() * 255));
}
public void move() {
  tSpeed = Math.random() * 5;
  tTheta = Math.random() * 2 * Math.PI;
  tX += Math.cos(tTheta) * tSpeed;
  tY += Math.sin(tTheta) * tSpeed;
}
public void show() {
	fill(coloure);
  noStroke();
    ellipse((float)tX, (float)tY, 20, 10);
}

}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
void show(){
	fill(colour);
  noStroke();
	ellipse((int)dX, (int)dY, 40, 40);
}
}
