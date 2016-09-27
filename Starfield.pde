//your code here
Particle jack = new NormalParticle();
void setup()
{
	//your code here
  size(400, 400);

}
void draw()
{
	//your code here
    background(0);
    jack.move();
    jack.show();

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
  dSpeed = Math.random() * 10;
  dTheta = (Math.random() * 2) * Math.PI;
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
class OddballParticle //implements Particle//uses an interface
{
	//your code here
}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
}
