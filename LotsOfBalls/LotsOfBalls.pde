int count = 500;
//declare variables
float [] x = new float[count];
float [] y = new float[count];
float [] velX = new float[count];
float [] velY = new float [count];
float [] diam = new float [count];
float x1, y1, velX1, velY1, diam1;






void setup() {
 noStroke();
  
  //set size of canvas
  size(500, 500);


  //use a for loop to set array
  

  for (int i = 0; i<count; i++) {

    //initialize variables
    x[i] = width/2;

    y[i] = height/2;
    diam[i] = 10;
    velX[i] = random(-100, 100);
    velY[i] = random(-150, 150);


  }
}

void draw() {
//draw background to cover previous frame
    
  background(0);
 
// setup another for loop to control the ball to bounce of the walls

  for ( int i= 0; i<count; i++) {
    

    //draw ball
    ellipse(x[i], y[i], diam[i], diam[i]);

    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];

    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
fill(random(255),0,0);    


} else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    
  fill(255);

}
    if (y[i] + diam[i]/2 >= height) {    
      velY[i] = -abs(velY[i]);               ////if the ball hits the top wall, assign y velocity the negative version of itself
   
  fill(0,random(255),0);  

} else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);    ////if the ball hits the bottom wall, assign y velocity the negative version of itself
    
  fill(255);

}

   
  }
}