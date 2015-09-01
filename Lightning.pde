int startX=150;
int startY=0;
int endX=150;
int endY=0;
void setup()
{
  size(300,300);
  background(0);
  strokeWeight(3);
  frameRate(200);
}
void draw()
{
	float r=(int)(Math.random()*256);
	float g=(int)(Math.random()*256);
	float b=(int)(Math.random()*256);
	stroke(r,g,b);
	while(endY<300)
	{
		endX=startX+(int)(Math.random()*20)-10;
		endY=startY+(int)(Math.random()*10);
		line(startX,startY,endX,endY);
		startX=endX;
		startY=endY;
	}

}
void mousePressed()
{
	startX=150;
	startY=0;
	endX=150;
	endY=0;
}

                                                                             