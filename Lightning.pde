int startX=400;
int startY=0;
int endX=400;
int endY=0;
int blazeIt=420;
void setup()
{
  size(800,800);
  background(0);
  strokeWeight(3);
  frameRate(200);  
}
void draw()
{
	Lightning();
	Cloud();
	Flash();
}
void Lightning()
{
	float r=(int)(Math.random()*256);
	float g=(int)(Math.random()*256);
	float b=(int)(Math.random()*256);
	stroke(r,g,b);
	while(endY<800)
	{
		endX=startX+(int)(Math.random()*20)-10;
		endY=startY+(int)(Math.random()*10);
		line(startX,startY,endX,endY);
		startX=endX;
		startY=endY;
	}

}
void Cloud()
{
	fill(200);
	ellipse(400,0,600,100);
}
void Flash()
{
	if(blazeIt<420)
	{
		blazeIt++;
	}
	if(blazeIt>400)
	{
		blazeIt++;
		stroke(0);
		fill(0,255,255);
		rect(0,0,800,800);
	}
	if(blazeIt>420)
	{
		stroke(0);
		fill(0);
		rect(0,0,800,800);
		blazeIt=0;
	}

}
void mousePressed()
{
	startX=(int)(Math.random()*400)+200;
	startY=0;
	endX=(int)(Math.random()*400)+200;
	endY=0;
}

                                                                             