import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int startX=400;
int startY=0;
int endX=400;
int endY=0;
int blazeIt=420;
public void setup()
{
  size(800,800);
  background(0);
  strokeWeight(3);
  frameRate(200);  
}
public void draw()
{
	Lightning();
	Cloud();
	Flash();
}
public void Lightning()
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
public void Cloud()
{
	fill(200);
	ellipse(400,0,600,100);
}
public void Flash()
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
public void mousePressed()
{
	startX=(int)(Math.random()*400)+200;
	startY=0;
	endX=(int)(Math.random()*400)+200;
	endY=0;
}

                                                                             
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
