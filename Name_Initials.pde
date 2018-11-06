// add Initials code here
Rain r1;

int numDrops = 40;
Rain[] drops = new Rain[numDrops]; // Declare and create the array

void setup() {
  size(500, 500);
  background(0, 0, 0, 99);
  smooth();
  noStroke();


  //Loop through array to create each object
  for (int i = 0; i < drops.length; i++) {

    drops[i] = new Rain(); // Create each object
    r1 = new Rain();
    noStroke();
    fill(255, 255, 255, 99);
    rect(0, 0, 500, 500, 99);
    rect(50, 50, 400, 400, 99);
    rect(100, 100, 300, 300, 99);
    rect(150, 150, 200, 200, 99);
    rect(200, 200, 100, 100, 99);
    fill(0, 0, 0, 99);
    ellipse(250, 250, 900, 900);
    ellipse(250, 250, 700, 700);
    ellipse(250, 250, 500, 500);
    ellipse(250, 250, 300, 300);
    ellipse(250, 250, 100, 100);

    //Background Buildings
    stroke(255, 255, 255, 99);
    strokeWeight(6);
    fill(255, 255, 255, 99);
    //1
    rect(0, 100, 100, 400);
    //2
    rect(100, 20, 120, 480);
    //3
    rect(220, 200, 100, 300);
    line(250, 200, 250, 100);
    line(270, 200, 270, 50);
    //4
    rect(320, 150, 100, 350);
    rect(380, 130, 40, 20);
    //5
    rect(420, 75, 80, 425);
    //floor
    stroke(100, 150, 50);
    fill(100, 150, 50);
    rect(0, 450, 500, 50);


    //D (2D)
    stroke(0, 0, 0);
    strokeWeight(3);
    fill(255, 255, 255, 150);
    rect(50, 50, 50, 400);
    arc(100, 250, 300, 400, radians(0), radians(90));
    arc(100, 250, 300, 400, radians(270), radians(360));
    fill(0, 0, 0, 99);
    arc(100, 250, 200, 300, radians(0), radians(90));
    arc(100, 250, 200, 300, radians(270), radians(360));

    //Z(3D)
    fill(255, 255, 255, 150);
    strokeWeight(3);
    stroke(0, 0, 0);
    rect(250, 75, 200, 50);
    beginShape();
    vertex(400, 125);
    vertex(450, 125);
    vertex(300, 425);
    vertex(250, 425);
    endShape(CLOSE);
    rect(250, 425, 200, 50);
    //3D
    strokeWeight(2);
    quad(250, 75, 300, 25, 500, 25, 450, 75);
    quad(450, 75, 500, 25, 500, 75, 450, 125);
    quad(450, 125, 500, 75, 350, 375, 300, 425);
    quad(450, 425, 500, 375, 350, 375, 300, 425);
    quad(450, 425, 500, 375, 500, 425, 450, 475);
  }
}

void draw() {
  noStroke();
  fill(255, 255, 255, 99);
  rect(0, 0, 500, 500, 99);
  rect(50, 50, 400, 400, 99);
  rect(100, 100, 300, 300, 99);
  rect(150, 150, 200, 200, 99);
  rect(200, 200, 100, 100, 99);
  fill(0, 0, 0, 99);
  ellipse(250, 250, 900, 900);
  ellipse(250, 250, 700, 700);
  ellipse(250, 250, 500, 500);
  ellipse(250, 250, 300, 300);
  ellipse(250, 250, 100, 100);

  //Background Buildings
  stroke(255, 255, 255, 99);
  strokeWeight(6);
  fill(255, 255, 255, 99);
  //1
  rect(0, 100, 100, 400);
  //2
  rect(100, 20, 120, 480);
  //3
  rect(220, 200, 100, 300);
  line(250, 200, 250, 100);
  line(270, 200, 270, 50);
  //4
  rect(320, 150, 100, 350);
  rect(380, 130, 40, 20);
  //5
  rect(420, 75, 80, 425);
  //floor
  stroke(100, 150, 50);
  fill(100, 150, 50);
  rect(0, 450, 500, 50);


  //D (2D)
  stroke(0, 0, 0);
  strokeWeight(3);
  fill(255, 255, 255, 150);
  rect(50, 50, 50, 400);
  arc(100, 250, 300, 400, radians(0), radians(90));
  arc(100, 250, 300, 400, radians(270), radians(360));
  fill(0, 0, 0, 99);
  arc(100, 250, 200, 300, radians(0), radians(90));
  arc(100, 250, 200, 300, radians(270), radians(360));

  //Z(3D)
  fill(255, 255, 255, 150);
  strokeWeight(3);
  stroke(0, 0, 0);
  rect(250, 75, 200, 50);
  beginShape();
  vertex(400, 125);
  vertex(450, 125);
  vertex(300, 425);
  vertex(250, 425);
  endShape(CLOSE);
  rect(250, 425, 200, 50);
  //3D
  strokeWeight(2);
  quad(250, 75, 300, 25, 500, 25, 450, 75);
  quad(450, 75, 500, 25, 500, 75, 450, 125);
  quad(450, 125, 500, 75, 350, 375, 300, 425);
  quad(450, 425, 500, 375, 350, 375, 300, 425);
  quad(450, 425, 500, 375, 500, 425, 450, 475);
  //Loop through array to use objects.
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
  }
}

class Rain {
  float r = random(500);
  float y = random(-height);

  void fall() {
    y = y + 7;
    fill(0, 10, 200, 180);
    ellipse(r, y, 5, 10);

    if (y>height) {
      r = random(500);
      y = random(-200);
    }
  }
}
