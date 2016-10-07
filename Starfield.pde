//your code here
ArrayList <Particle> jack = new ArrayList<Particle>();
char caseN = '1';
void setup() {
  size(600, 600);
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
void draw() {
 background(0);
 for (int i = 0; i < jack.size(); i++) {
   	Particle jil = jack.get(i);
  	jil.move();
  	jil.show();
  	/*if(jil.getMoves() > 100 && jil instanceof OddballParticle){
  		jack.remove(i);
  	}*///this code would remove OddballParticle if it goes over 100 moves.
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
void keyPressed(){
	switch(key){
		case '1':
		caseN = '1';
		break;
		case '2':
		caseN = '2';
		break;
		case '3':
		caseN = '3';
		break;
		default:
		caseN = '1';
		break;
	}

}
class NormalParticle implements Particle
{
double dX, dY, dTheta, dSpeed;
int colour, moves;
NormalParticle(){
  dX = mouseX;
  dY = mouseY;
  dSpeed = (Math.random() * 10);
  colour = color((int)(Math.random() * 300), 0, (int)(Math.random() * 255));
  dTheta = (Math.random() * 2) * Math.PI;
}
public void move(){
	switch(caseN){
		case '1':
			dTheta += (Math.random() * 10) * (Math.PI/90);
		break;
		case '2':
			dTheta += ((int)(Math.random() * 10)) * (Math.PI/180);
		break;
		case '3':
			dTheta += (Math.random() * 20) * Math.PI;
		break;
	}
	dX += Math.cos(dTheta) * dSpeed;
  	dY += Math.sin(dTheta) * dSpeed;
}
public void show(){
  fill(colour);
  ellipse((int)dX, (int)dY, 5, 5);
}
public int getMoves() {
	return moves;
}
}
interface Particle
{
  public void move();
  public void show();
  public int  getMoves();
}
class OddballParticle implements Particle
{
double tX, tY, tSpeed, tTheta;
int coloure, moves;
OddballParticle() {
	tX = mouseX;
	tY = mouseY;
 	tSpeed = Math.random() * 10;
 	tTheta = Math.random() * 2 * Math.PI;
 	coloure = color((int)(Math.random() * 255), 0, (int)(Math.random() * 255));
}
public void move() {
	moves++;
  tTheta += ((int)(Math.random() * 10)) * (Math.PI/180);
  tX += Math.cos(tTheta) * tSpeed;
  tY += Math.sin(tTheta) * tSpeed;
}
public void show() {
	fill(coloure);
  	noStroke();
    rect((float)tX, (float)tY, 30, 30);
}
public int getMoves(){
	return moves;
}
}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
void show(){
	fill(colour);
  	noStroke();
	ellipse((int)dX, (int)dY, 20, 20);
}
}
