//your code here
Particle[] jack;
void setup()
{
	//your code here
  size(400, 400);
  jack = new Particle[100]
  for(int i = 0; i < 100; i ++){
  	if(i % 2 == 0){
  		jack[i] = new NormalParticle();
  	}
  	jack[i] = new OddballParticle;
  	}
  }
}
void draw()
{
	//your code here
    background(0);
   

}
class NormalParticle implements Particle
{
double dX, dY, dSpeed, dTheta;
int colour;
NormalParticle(){
  dX = 250;
  dY = 250;
  dSpeed = Math.random() * 10;
  dTheta = (Math.random() * 2) * Math.PI;
  colour = color(255);
}
public void move(){
  dX += Math.cos(dTheta) * dSpeed;
  dY += Math.sin(dTheta) * dSpeed;
}
public void show(){
  ellipse((float)dX, (float)dY, 10, 10);
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
 tX = 250;
 tY = 250;
 tSpeed = Math.random() * 10;
 tTheta = Math.random() * 2 * Math.PI;
 coloure = color(255);
}
public void move() {
  tX += Math.cos(tTheta) * tSpeed;
  tY += Math.sin(tTheta) * tSpeed;
}
public void show() {
    ellipse(tX, tY, 20, 20);		
}

}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
}
