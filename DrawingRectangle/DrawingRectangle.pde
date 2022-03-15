/* Note:
 Add liseners: keyboard and mouse
 Remember to add a black background() to rightMouseButton
 See: https://processing.org/reference/mouseButton.html
 Prototype small program to verify mouseClicking
 */


//Global Variables
int x = width*1/4, y = height*1/4, rectWidth = width*1/2, rectHeight = height*1/2; 
int backgroundBlue=0;
int strokeReset=1;
int thin, thick;
color strokeColor, fillColor; 
color yellow=#F8FC03, purple=#FA00F6, whiteReset=#FFFFFF, blackReset=#000000; 
// Color deisgn must limit blue as much as possible ... notice purple
color yellowNightMode=#F8FC00, purpleNightMode=#FA0096; //No blue light for the color shade 
Boolean nightMode=false; //Daytime is false 
//
void setup() 
{
  //size(700, 500); //Display Geometry (Orientations): Square, Landscape, Portrait
  fullScreen(); //displayWidth, displayHeight
  //Population
  x = width*1/4;
  y = height*1/4;
  rectWidth = width*1/2;
  rectHeight = height*1/2;
  thin = width*1/50;
  thick = 2*thin;
  println("Canvas Size", width, height);
  println("Display", " width: ", displayWidth, " height: ", displayHeight);
}//End setup
//
void draw() 
{
  // Background as gray scale, 0-255 (notice 256 #'s)
  background(50);
  // New Background Function "covers" old gray scale background()
  // Background as color, RGB, random(a,b)
  // Night Mode means background cannot have blue // change random for night mode
  if ( nightMode=true ) //Night Mode Choices 
  {
    backgroundBlue= 0;
    strokeColor = yellowNightMode;
    fillColor = purpleNightMode;
  } else 
  {
    backgroundBlue = int( random(255) );
    strokeColor = yellow; 
    fillColor = purple;
  } //End Night Mode
  //
  background ( color(random(0, 255), random(255), random(255), backgroundBlue) );
  strokeWeight(thick);
  stroke(strokeColor); 
  fill(fillColor); 
  rect(x, y, rectWidth, rectHeight);
  //reset to defaults
  fill(whiteReset);
  stroke(blackReset);
  strokeWeight(strokeReset);
}//End draw
//
void keyPressed () {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed



/*

 
 //End of Program
 */
